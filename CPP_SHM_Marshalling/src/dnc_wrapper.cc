#include "../include/dnc_wrapper.h"

extern "C"
{

 char* svc_name;
 vector<Person> persons;


#pragma region Helper Methods
	int* vectorToIntArray(vector<int> p_vec, int p_length)
	{
		int* _arr = new int[p_length];
		std::copy(p_vec.begin(), p_vec.end(), _arr);
		return _arr;
	}

    Person* vectorToAgentIdentifierArray()
	{
		Person* _persons = new Person[persons.size()];
		Person _person;
		for (int i = 0; i < persons.size(); i++)
		{
			memcpy(&_person, &persons[i], sizeof(Person));
			_persons[i] = _person;
		}
		return _persons;
	}

	#pragma endregion

//Gets string from caller and returns an int
int Initialize(char* p_svc_name)
{
    std::cout << "Calling Initialize..." << std::endl;
    svc_name = p_svc_name;
    std::cout << "Service Name is: " << p_svc_name << std::endl;

    svc_name = (char*)malloc(50);
 
    strcpy(svc_name, p_svc_name);
    
    string name = "Amanda";

    Person newPerson;
    newPerson.Id =1;
    strncpy(newPerson.Name,name.c_str(),50);
    newPerson.Age = 24;
    newPerson.IsAlive = true;
    
    persons.emplace_back(newPerson);

    return 1;
}
//Return string to caller
char* GetServiceName()
{
    string service_name = svc_name;
    std::cout << "Calling GetServiceName..."<<service_name<< std::endl;
    return svc_name;
}
//Gets int from caller
void Birthday(int person_id)
{
    std::cout << "Calling Birthday..." << std::endl;
   for(int i=0;i<persons.size();i++)
   {
       if(persons[i].Id == person_id)
       {
           persons[i].Age++;
           std::cout << "Birthday..."<<persons[i].Age<< std::endl;
       }
   }
}
//Return int array to caller
int* GetAllIds(int& p_length)
{
    std::cout << "Calling GetAllIds..." << std::endl;
    vector<int> _ids;
    for(int i=0;i<persons.size();i++)
    {
        _ids.push_back(persons[i].Id);
    }
    p_length = _ids.size();
	return vectorToIntArray(_ids, p_length);
}

//Get user defined object from caller
bool Search(Person person)
{
    std::cout << "Calling Search..." << std::endl;

    for(int i=0;i<persons.size();i++)
    {
        if(strcmp(persons[i].Name, person.Name)==0 && persons[i].Age == person.Age && persons[i].Id == person.Id && persons[i].IsAlive == person.IsAlive)
        {
            return true;
        }
    }
    return false;
}
//return user defined array to caller
Person* GetAll(int& p_length)
{
    p_length = persons.size();
    return vectorToAgentIdentifierArray();
}
//Adds a new persom
int Add(Person p)
{
    persons.emplace_back(p);

    return p.Id;
}


//Dispose Off Utilized Memory
//release memory against integer array
int releaseIntArrayMemory(int* p_Array) {
    try
    {
        std::cout << "Releasing memory against integer array."<<std::endl;
        delete[] p_Array;
        return 0;
    }
    catch (exception& e)
    {
        throw;
    }
}
int ReleasePersonArray(Person* p_persons)
{
try
    {
        std::cout << "Releasing memory against persons array." <<std::endl;
        delete[] p_persons;
        return 0;
    }
    catch (exception& e)
    {
        throw;
    }
}
}
