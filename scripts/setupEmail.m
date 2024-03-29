function setupEmail

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Run this function to email yourself updates from
% within a PsychToolbox script.
% 
% Useage:
% > setupEmail;
% > S.emailRecipient = {'stephanie.a.gagnon@gmail.com'};
% > emailSubject = ['Hello! This is my subject'];
% > emailBody = ['This is the body of my email.'];
% > sendmail(S.emailRecipient, emailSubject, emailBody);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define these variables appropriately:
mail = 'stanford.psych.experiments@gmail.com'; %Lab GMail email address (sender)
password = '$1dlpf$1'; %Your GMail password

% Then this code will set up the preferences properly:
setpref('Internet','E_mail',mail);
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','SMTP_Username',mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');