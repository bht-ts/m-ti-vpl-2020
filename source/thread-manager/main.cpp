#include <stdio.h>  // puts
#include <vector>
#include <thread>

// custom library

#include "threadManager.h"

using namespace std;

int main(int argc, char *argv[])
{
    vector<Job> jobs = {Job(1,2), Job(0,4), Job(2,3), Job(5,5), Job(8,3)};

	ThreadManager m;

    vector<Result> *result = m.processJobs(&jobs);

    for (const Result &r : *result)
    {
        printf("%d\n", r.result);
    }

    //[[maybe_unused]] int x = 5 + 8;
    //assert(x==13);
	return 0;
}
