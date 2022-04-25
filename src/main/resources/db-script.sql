create table member(
                       nic varchar(10) primary key ,
                       name varchar(100) not null ,
                       contact varchar(15) not null
);

create table book(
                     isbn varchar(25) primary key ,
                     name varchar(100) not null ,
                     author varchar(100) not null ,
                     preview longblob
);

create table issue(
                      id int primary key auto_increment,
                      nic varchar(100) not null ,
                      isbn varchar(25) not null ,
                      date date not null ,
                      constraint fk_member foreign key (nic) references member(nic),
                      constraint fk_book foreign key (isbn) references  book(isbn)
);

