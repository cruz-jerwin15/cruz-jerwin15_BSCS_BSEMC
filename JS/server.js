// doubleNumber(5);
// function doubleNumber(num){
//     console.log(num*2);
// }
// doubleNumber(5);

// const tripleNumber = (num,num1)=>{
//  console.log(num*3);
// }

// tripleNumber(5);

// let num1 = prompt("Enter first number");
// let num2 = prompt("Enter second number");
const employees =[
    { id: 1, name: "Alice", salary: 45000, position: "Developer" },
    { id: 2, name: "Bob", salary: 60000, position: "Manager" }, 
    { id: 3, name: "Charlie", salary: 38000, position: "Designer" }, 
    { id: 4, name: "Diana", salary: 52000, position: "Team Lead" }, 
    { id: 5, name: "Ethan", salary: 47000, position: "QA Engineer" }
]

for(var i=0;i<employees.length;i++){
    console.log('Employee: ',employees[i].name);
    console.log('Position: ',employees[i].position);
    console.log('Salary: ',employees[i].salary);
    
    if(employees[i].salary<50000){
        console.log('Bonus: 5000');
    }else{
         console.log('Bonus: No Bonus');
    }
    console.log('');
    
}
// Employee: Alice
// Position: Developer
// Salary: 45000
// Bonus: 5000








