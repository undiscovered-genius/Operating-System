#include<iostream>
#include<stdlib.h>

using namespace std;

void WaitingTime(int processes[], int n, int brst[], int wait[])
{
    wait[0] = 0 ;
    
    for (int  i = 1; i < n ; i++ ){
    	wait[i] =  brst[i-1] + wait[i-1] ;
	} 
}
   
void TurnAroundTime( int processes[], int n, int brst[], int wait[], int tat[])
{
    for (int  i = 0; i < n ; i++){
			tat[i] = brst[i] + wait[i];
	}
}

void FCFS()
{
	int processes[] = { 1, 2, 3, 4};
    int n = sizeof processes / sizeof processes[0];
    int  burst_time[] = {21, 3, 6, 2};
    int wait[n], tat[n], total_wt = 0, total_tat = 0;

    WaitingTime(processes, n, burst_time, wait);
   
    TurnAroundTime(processes, n, burst_time, wait, tat);
   
    cout<<"Processes  \t Burst Time \t  Waiting time \t  Turn Around Time\n";
   
    for (int  i=0; i<n; i++)
    {
        total_wt = total_wt + wait[i];
        total_tat = total_tat + tat[i];
        cout<<"      "<<i+1;
        cout<<"  \t     "<<burst_time[i];
        cout<<"   \t     "<<wait[i];
        cout<<"     \t      "<<tat[i];
        cout<<"\n";
    }
    float s=(float)total_wt / (float)n;
    float t=(float)total_tat / (float)n;
    cout<<"\n Average Waiting Time = "<<s<<" ms";
    cout<<"\n";
    cout<<" Average Turn Around Time = "<<t<<" ms";
}

void swap(int *a, int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}

void SJF(){
	int processes[] = { 1, 2, 3, 4};
    int n = sizeof processes / sizeof processes[0];
    int  burst_time[] = {6, 4, 1, 5};
    int wait[n], tat[n], total_wt = 0, total_tat = 0;

    for(int i=0; i<n; i++)
    {
        for(int j=0; j<n-1; j++){
        	if(burst_time[j] > burst_time[j+1])
            {

                swap(burst_time[j], burst_time[j+1]);
                swap(processes[j], processes[j+1]);
            }
		}
    }
    
        
    WaitingTime(processes, n, burst_time, wait);
    TurnAroundTime(processes, n, burst_time, wait, tat);
    
    cout<<"Processes   \t Burst Time \t  Waiting time \t  Turn Around Time\n";
   
    for (int  i=0; i<n; i++)
    {
        total_wt = total_wt + wait[i];
        total_tat = total_tat + tat[i];
        cout<<"      "<<processes[i];;
        cout<<"  \t     "<<burst_time[i];
        cout<<"   \t     "<<wait[i];
        cout<<"     \t      "<<tat[i];
        cout<<"\n";
    }
    float s=(float)total_wt / (float)n;
    float t=(float)total_tat / (float)n;
    cout<<"\n Average Waiting Time = "<<s<<" ms";
    cout<<"\n";
    cout<<" Average Turn Around Time = "<<t<<" ms";
} 

void WaitingTime(int processes[], int n, int brst[], int wait[], int quantum)
{
    // Make a copy of burst times bt[] to store remaining
    // burst times.
    int rem_bt[n];
    for (int i = 0 ; i < n ; i++)
        rem_bt[i] =  brst[i];
  
    int t = 0; // Current time
  
    // Keep traversing processes in round robin manner
    // until all of them are not done.
    while (1)
    {
        bool done = true;
  
        // Traverse all processes one by one repeatedly
        for (int i = 0 ; i < n; i++)
        {
            // If burst time of a process is greater than 0
            // then only need to process further
            if (rem_bt[i] > 0)
            {
                done = false; // There is a pending process
  
                if (rem_bt[i] > quantum)
                {
                    // Increase the value of t i.e. shows
                    // how much time a process has been processed
                    t += quantum;
  
                    // Decrease the burst_time of current process
                    // by quantum
                    rem_bt[i] -= quantum;
                }
  
                // If burst time is smaller than or equal to
                // quantum. Last cycle for this process
                else
                {
                    // Increase the value of t i.e. shows
                    // how much time a process has been processed
                    t = t + rem_bt[i];
  
                    // Waiting time is current time minus time
                    // used by this process
                    wait[i] = t - brst[i];
  
                    // As the process gets fully executed
                    // make its remaining burst time = 0
                    rem_bt[i] = 0;
                }
            }
        }
  
        // If all processes are done
        if (done == true)
          break;
    }
}

void RR(){
	int processes[] = { 1, 2, 3, 4};
    int n = sizeof processes / sizeof processes[0];
    int quantum = 20;
    int  burst_time[] = {53, 17, 68, 24};
    int wait[n], tat[n], total_wt = 0, total_tat = 0;

    WaitingTime(processes, n, burst_time, wait,quantum);
   
    TurnAroundTime(processes, n, burst_time, wait, tat);
   
    cout<<"Processes  \t Burst Time \t  Waiting time \t  Turn Around Time\n";
   
    for (int  i=0; i<n; i++)
    {
        total_wt = total_wt + wait[i];
        total_tat = total_tat + tat[i];
        cout<<"      "<<i+1;
        cout<<"  \t     "<<burst_time[i];
        cout<<"   \t     "<<wait[i];
        cout<<"     \t      "<<tat[i];
        cout<<"\n";
    }
    float s=(float)total_wt / (float)n;
    float t=(float)total_tat / (float)n;
    cout<<"\n Average Waiting Time = "<<s<<" ms";
    cout<<"\n";
    cout<<" Average Turn Around Time = "<<t<<" ms";
}

void Priority(){
	int processes[] = { 1, 2, 3, 4,5};
    int n = sizeof processes / sizeof processes[0];
    int  priority[] = {3, 1, 3, 4, 2};
    int  burst_time[] = {10, 1, 2, 1, 5};
    int wait[n], tat[n], total_wt = 0, total_tat = 0;

    for(int i=0; i<n; i++)
    {
        for(int j=0; j<n-1; j++){
        	if(priority[j] > priority[j+1])
            {

                swap(burst_time[j], burst_time[j+1]);
                swap(priority[j], priority[j+1]);
                swap(processes[j], processes[j+1]);
            }
		}
    }
    
        
    WaitingTime(processes, n, burst_time, wait);
    TurnAroundTime(processes, n, burst_time, wait, tat);
    
    cout<<"Processes  \t Priority \t Burst Time \t  Waiting time \t  Turn Around Time\n";
   
    for (int  i=0; i<n; i++)
    {
        total_wt = total_wt + wait[i];
        total_tat = total_tat + tat[i];
        cout<<"      "<<processes[i];
        cout<<"  \t     "<<priority[i];
        cout<<"  \t     "<<burst_time[i];
        cout<<"   \t     "<<wait[i];
        cout<<"     \t      "<<tat[i];
        cout<<"\n";
    }
    float s=(float)total_wt / (float)n;
    float t=(float)total_tat / (float)n;
    cout<<"\n Average Waiting Time = "<<s<<" ms";
    cout<<"\n";
    cout<<" Average Turn Around Time = "<<t<<" ms";
}

int main()
{
    int st = 1, ch;
	while(st == 1){
		cout<<"\n--------Single Processor Scheduling Algorithms---------";
		cout<<"\n1. First Come, First Served (FCFS)";
		cout<<"\n2. Shortest Job First (SJF)";
		cout<<"\n3. Priority";
		cout<<"\n4. Round Robin (RR)";
		cout<<"\n   Enter Choice : ";
		cin>>ch;
		switch(ch){
			case 1:
				FCFS();
				break;
			case 2:
				SJF();
				break;
			case 3:
				Priority();
				break;
			case 4:
				RR();
				break;
			default:
				cout<<"\n Invalid Choice!";
		}
		cout<<"\n\n   Press 1 to Continue : ";
		cin>>st;
	}
    return 0;
}
