#include<stdio.h>
#include<pthread.h>
#include<semaphore.h>
#include<signal.h>
int readc=0,cnt=1;
sem_t wrt;sem_t m;

void *writer(int *wno)
{
sem_wait(&wrt);
printf("%d %d",*wno,cnt);
sem_post(&wrt);

}


void *reader(int *rno)
{
sem_wait(&m);
readc++;
if(readc==1)
sem_wait(&wrt);
sem_post(&m);

printf("%d %d",rno,cnt);
sem_wait(&m);
readc--;

if(readc==0)
sem_post(&wrt);
sem_post(&m);
}
int main()
{
sem_init(&wrt,0,1);
sem_init(&m,0,1);
pthread_t readers[10];
pthread_t writers[5];
int a[10]={1,2,3,4,5,6,7,8,9,10};
for(int i=0;i<10;i++)
pthread_create(&readers[i],NULL,(void*)readers,&a[i]);

for(int i=0;i<5;i++)
pthread_create(&writers[i],NULL,(void*)writers,&a[i]);

for(int i=0;i<10;i++)
pthread_join(&readers[i],NULL);

for(int i=0;i<5;i++)
pthread_join(&writers,NULL);
//pthread_detach(wrt);
//pthread_detach(m);  
return 0;
}
