Boris Bikes, build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required. 

### User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```


### User Stories Table Representation

| Objects            | Messages          |
| ------------------ | ----------------- |
| Person             |                   |
| Bike               | bike_working      |
| Station            | bike_release      |



### User Stories Diagram

(Person) bike_working ---> (bike) <--- bike_release (Station)