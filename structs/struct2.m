%  Write a function that will accept a structure array of student as defined
% in this chapter and calculate the final average of each one, assuming that
% all exams have equal weighting. Add a new field to each array to contain
% the final average for that student and return the updated structure to the
% calling program. Also, calculate and return the final class average
student(3)=struct('Name',[],'Exams',[],'ave',[]);
class_ave=0;
for ii=1:length(student)
    student(ii).Name=input('Name :','s');
    for jj=1:3
    student(ii).Exams(jj)=input('Exams :');
    end
    student(ii).ave=ave_student(student(ii).Exams);
    class_ave=class_ave+student(ii).ave;
end
class_ave=class_ave/length(student);
for ii=1:length(student)
    fprintf("\nStudent : %s\n",student(ii).Name);
    fprintf("Exam 1 : %d\nExam 2 : %d\nExam 3 : %d\n",student(ii).Exams(1),student(ii).Exams(2),student(ii).Exams(3));
    fprintf("Average of student : %4.3f\n\n",student(ii).ave);
end
fprintf('average of class is %4.3f\n',class_ave);
