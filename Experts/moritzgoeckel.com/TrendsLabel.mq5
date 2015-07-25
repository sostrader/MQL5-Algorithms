#property copyright "Copyright 2015, Moritz G�ckel"
#property link      "https://www.moritzgoeckel.com"
#property version   "1.00"

#include <moritzgoeckel.com/MATrendLabel.mqh>

MATrendLabel trend;

int OnInit()
{
   EventSetTimer(60);
   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
   EventKillTimer();
}

void OnTick()
{   
   MqlTick tick;
   SymbolInfoTick(_Symbol, tick);
   
   trend.printTrends();
}

void OnTimer()
{
   
}
