
#ifndef _THING_H_
#define _THING_H_

// Thing.h
#include "Person.h"
#include "GPS.h"
#include "JvTime.h"
class Person; 

class Thing
{
 private:
 protected:
 public:
  
  std::string model;
  std::string sequence_num;
  std::string description;

  std::string type;
  std::string stuff;
  
  Person      owner;
  GPS_DD      location;
  
  Thing(void);
  Thing(Person arg_owner);
  virtual void dump(); // print the content of the object
  Json::Value dump2JSON();
};

#endif /* _THING_H_ */
