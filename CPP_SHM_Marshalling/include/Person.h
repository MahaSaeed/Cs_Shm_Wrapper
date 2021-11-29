#ifndef PERSON_H
#define PERSON_H

#include "global.h"
using namespace std;

#endif 

typedef struct
{
    int32_t Id;
    char Name[50];
    int32_t Age;
    bool IsAlive;
}Person;