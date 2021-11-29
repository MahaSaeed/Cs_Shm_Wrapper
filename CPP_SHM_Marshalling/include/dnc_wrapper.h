
#ifndef DNC_WRAPPER_H
#define DNC_WRAPPER_H

#include "global.h"


using namespace std;


//Gets string from caller and returns an int
extern "C" int Initialize(char* p_svc_name);
//Return string to caller
extern "C" char* GetServiceName();
//Gets int from caller
extern "C" void Birthday(int person_id);
//Return int array to caller
extern "C" int* GetAllIds(int& p_length);
//Return string array to caller
extern "C" char* GetNames(int& p_length);
//Get user defined object from caller
extern "C" bool Search(Person person); 
//return user defined array to caller
extern "C" Person* GetAll(int& p_length);
//Adds a new person
extern "C" int Add(Person p);



//Dispose Off Utilized Memory
extern "C" int ReleaseStringArray(char* names); 
extern "C" int ReleaseIntegerArray(int* ids);
extern "C" int ReleasePersonArray(Person* p_persons);

#endif