create table if not exists  tbl_category(
 id bigint(20) not null auto_increment primary key,
 category_name varchar(255) null default null
);

create table if not exists `book-store-dev`. `tbl_book`(
	`ìd` bigint(20) not null auto_increment primary key,
    `sku` varchar(255) default null,
    `name` varchar(255) default null,
    `description` varchar(255) default null,
    `unit_price` decimal(13,2) default null,
    `image_url` varchar(255) default null,
    `active` bit default 1,
    `units_in_stock` int(11) default null,
    `date_created` datetime default null,
    `last_updated` datetime default null,
    `category_id` bigint(20) not null,
    foreign key (`category_id`) references `tbl_category` (`id`)
);

insert into tbl_category(category_name) values ("Text Books"),
												("Fantasy");
                                                
insert into tbl_book(
sku,
name,
description,
unit_price,
image_url,
active,
units_in_stock,
date_created,
category_id
) values(
'text-102',
'Python Programming Language',
'Learn the Python programming language',
30.00,
'assets/images/books/text-102.png',
1,
6,
'2021-05-13',
1
),
(
'text-103',
'Ruby Programming Language',
'Learn the Ruby programming language',
31.00,
'assets/images/books/text-103.png',
1,
8,
'2021-05-13',
1
),
(
'text-104',
'Kotlin Programming Language',
'Learn the Kotlin programming language',
36.12,
'assets/images/books/text-104.png',
1,
18,
'2021-05-13',
1
),
(
'text-105',
'Mathematic',
'Learn Mathematic and algorithms',
22.00,
'assets/images/books/text-105.png',
1,
15,
'2021-05-13',
1
);

select * from  tbl_book;

