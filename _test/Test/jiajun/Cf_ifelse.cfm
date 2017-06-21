<html>
<head>
	<title>Practice ifelse</title>
</head>
<body>
  <cfscript>
    hasStartedLesson = RandRange(0,1);
    enjoyedLesson = RandRange(0,1);
    lessonGrade = RandRange(0,100);

        if ( hasStartedLesson AND enjoyedLesson ) {
            WriteOutput('Glad you enjoyed the lesson!');
            WriteOutput( '<br />' );
        };

    if ( hasStartedLesson ){
        WriteOutput('Lesson started!' );
        WriteOutput( '<br />' );

        if ( lessonGrade GE 60 ){
            WriteOutput('You have Passed!');
            WriteOutput( '<br />' );
        };

        if ( lessonGrade GE 90 ){
            WriteOutput('Final Grade: A!');
            WriteOutput( '<br />' );
        };

        if ( (lessonGrade LT 90) AND (lessonGrade GE 80) ){
            WriteOutput('Final Grade: B!');
            WriteOutput( '<br />' );
        };
        if ( (lessonGrade LT 80) AND (lessonGrade GE 70) ){
            WriteOutput('Final Grade: C');
            WriteOutput( '<br />' );
        };
        if ( (lessonGrade LT 70) AND (lessonGrade GE 60) ){
            WriteOutput('Final Grade: D');
            WriteOutput( '<br />' );
        };
        
        if (lessonGrade LT 60){
            WriteOutput('You have Failed !!!!!');
            WriteOutput( '<br />' );
            WriteOutput('Final Grade: E!');
            WriteOutput( '<br />' );
        };
        
    } else {
         WriteOutput('the lesson has not been started!');
         WriteOutput( '<br />' ); 
    };
</cfscript>
</body>
</html>