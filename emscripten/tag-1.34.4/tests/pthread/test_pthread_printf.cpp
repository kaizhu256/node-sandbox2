#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <emscripten.h>
#include <assert.h>

void *ThreadMain(void *arg)
{
	printf("Hello from thread, string: %s, int: %d, double: %g\n", "str", 5, 42.0);
}

int numThreadsToCreate = 1000;

int main()
{
	malloc(4); // Work around bug https://github.com/kripken/emscripten/issues/2621

	pthread_t thread;
	int rc = pthread_create(&thread, NULL, ThreadMain, 0);
	assert(rc == 0);

	rc = pthread_join(thread, NULL);
	assert(rc == 0);

	printf("The thread should print 'Hello from thread, string: str, int: 5, double: 42.0'\n");

#ifdef REPORT_RESULT
	int result = 0;
	REPORT_RESULT();
#endif
}
