-- Cleansed DIM_DateTable --
SELECT TOP (1000) [DateKey],
      [FullDateAlternateKey] as Date,
      --,[DayNumberOfWeek]
      [EnglishDayNameOfWeek] as Day,
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      [WeekNumberOfYear] as WeekNr,
      [EnglishMonthName] as Month,
	  LEFT([EnglishMonthName],3) as MonthShort,
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] as MonthNo,
      [CalendarQuarter] as Quarter,
      [CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
where CalendarYear >= 2019