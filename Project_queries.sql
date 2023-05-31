use [Employee_Database]


-- question1 

SELECT a.[emp_no]
      ,[first_name]
      ,[last_name]
      ,[sex]
      ,[salary]
  FROM [Employee_Database].[dbo].[employees] a
  join [Employee_Database].[dbo].[salaries] b
  on a.[emp_no]=b.[emp_no]


  -- question2
  SELECT [first_name]
      ,[last_name]
      ,[hire_date]
  FROM [Employee_Database].[dbo].[employees]
  where [hire_date] = '1986'


  -- question3
  select c.[dept_no],[dept_name],c.[emp_no],[first_name],[last_name]
  FROM [Employee_Database].[dbo].[departments] a
  join [Employee_Database].[dbo].[dept_emp] b
  on a.[dept_no]=b.[dept_no]
  join [Employee_Database].[dbo].[dept_manager] c
  on b.[emp_no]=c.[emp_no]
  join [Employee_Database].[dbo].[employees] d
  on b.[emp_no]=d.[emp_no]


  -- question4
  select b.[dept_no],b.[emp_no],[last_name],[first_name],[dept_name]
  FROM [Employee_Database].[dbo].[departments] a
  join [Employee_Database].[dbo].[dept_emp] b
  on a.[dept_no]=b.[dept_no]
  join [Employee_Database].[dbo].[employees] c
  on b.[emp_no]=c.[emp_no]



  -- question5
  select [first_name],[last_name],[sex]
  from [Employee_Database].[dbo].[employees]
  where [first_name]='Hercules' and [last_name] like 'b%'


  -- question6
  select b.[emp_no],[first_name],[last_name]
  FROM [Employee_Database].[dbo].[departments] a
  join [Employee_Database].[dbo].[dept_emp] b
  on a.[dept_no]=b.[dept_no]
  join [Employee_Database].[dbo].[employees] c
  on b.[emp_no]=c.[emp_no]
  where [dept_name]='sales'


  -- question7
  select b.[emp_no],[first_name],[last_name],[dept_name]
  FROM [Employee_Database].[dbo].[departments] a
  join [Employee_Database].[dbo].[dept_emp] b
  on a.[dept_no]=b.[dept_no]
  join [Employee_Database].[dbo].[employees] c
  on b.[emp_no]=c.[emp_no]
  where [dept_name]='sales' or [dept_name]='development'


  --question8
  select [last_name],count([last_name]) frequency_count
  from [Employee_Database].[dbo].[employees]
  group by [last_name]
  order by frequency_count desc
