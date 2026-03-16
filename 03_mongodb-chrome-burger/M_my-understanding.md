MongoDB คือ ระบบจัดการฐานข้อมูล (Database Management System) ประเภื NoSQL Database แต่จะเก็บข้อมูลเป็นเอกสาร Document
โดยจะมีโครงสร้างดังนี้
1.Database คือ โฟลเดอร์ใหญ่ที่เก็บข้อมูล ง่ายๆคือพื้นที่หลักในการเก็บข้อมูล และภายใน Database จะเก็บ Collection หลายอัน
    เช่น ecommerce_db ข้างในจะมีหลาาย Collection
        customer
        products
        orders
2.Collection คือ หัวข้อที่เราจะใช้เก็บข้อมูลคล้าย Table
        customer
        products
        orders
3.Document คือ เก็บข้อมูลทั้งหมดเกี่ยวกับรายการนั้นๆเช่น
        {"id":1,
        "name": "milk",
        "price": 299
        }
  ซึ่ง 1 document คือ ข้อมูล id 1, name milk , price 299 เป็นข้อมูลทั้งหมดใน {}
4.Fields คือ Key หัวข้อคุณสมบัติของข้อมูลนั้นเช่น
        id
        name
        price

