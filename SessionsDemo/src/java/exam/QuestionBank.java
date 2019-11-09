package exam;

import java.util.ArrayList;

public class QuestionBank 
{
    public String question;
    public String[] answers;
    public String correctAnswer;       
    
    public static ArrayList<QuestionBank> GenerateQuestionBank()
    {
        ArrayList<QuestionBank> questionbank = new ArrayList<QuestionBank>();

        QuestionBank q1=new QuestionBank();
        q1.question="Who is the current Prime Minister of India";
        q1.answers=new String[]{"Manmohan Singh", "Narendra Modi", "Rahul Gandhi","Shiela Dixit"};
        q1.correctAnswer="Narendra Modi";
        
        QuestionBank q2=new QuestionBank();
        q2.question="What is the name of the rover sent to Moon by India in 2019?";
        q2.answers=new String[]{"Vikram","Arvind","ISRO","Pragyan"};
        q2.correctAnswer="Pragyan";
        
        QuestionBank q3=new QuestionBank();
        q3.question="In which year it's first satellite is sent by India to Mars?";
        q3.answers=new String[]{"2013","2014","2017","2015"};
        q3.correctAnswer="2014";
        
        QuestionBank q4=new QuestionBank();
        q4.question="On which day Jammu and Kashmir has been re-stablished as a Union Terrotory of India?";
        q4.answers=new String[]{"5 August","30 September","2 October","31 October"};
        q4.correctAnswer="31 October";

        QuestionBank q5=new QuestionBank();
        q5.question="Who is the first Lt. Governor of UT J&K?";
        q5.answers=new String[]{"Ramnath Kovind","Pratibha Patil","Shubhash Mathur", "GC Murmu"};
        q5.correctAnswer="GC Murmu";

        questionbank.add(q1);
        questionbank.add(q2);
        questionbank.add(q3);
        questionbank.add(q4);
        questionbank.add(q5);
        
        return questionbank;
    }
}


