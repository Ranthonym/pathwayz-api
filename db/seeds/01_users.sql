-- Users table seeds here (Example)
INSERT INTO users (name, email, password) VALUES ('Alice','alice@example.com', 'password');
INSERT INTO users (name, email, password) VALUES ('Kira', 'kira@example.com', 'password');



---- 16 Personality Types You Can Get as a Result -----
INSERT INTO results (title, description) VALUES ('Introvert | Sensing | Thinking | Judging', 'You are a type ISTJ, aka The Inspector. You tend to be practical and logical above all else. You should consider a job in accounting or engineering.');
INSERT INTO results (title, description) VALUES ('Introvert | Sensing | Feeling | Judging', 'You are a type ISFJ, aka The Protector. You tend to be sympathetic and organized above all else. You should consider a job in childcare or bookkeeping.');

INSERT INTO results (title, description) VALUES ('Introvert | Intuitive | Feeling | Judging', 'You are a type INFJ, aka The Counselor. You tend to be sensitive and creative above all else. You should consider a job in education or the arts.');

INSERT INTO results (title, description) VALUES ('Introvert | Intuitive | Thinking | Judging', 'You are a type INTJ, aka The Mastermind. You tend to be decisive and insightful above all else. You should consider a job in architecture or engineering.');

INSERT INTO results (title, description) VALUES ('Introvert | Sensing | Thinking | Perceiving', 'You are a type ISTP, aka The Operator. You tend to be analytical and practical above all else. You should consider a job in computer technology or farming.');

INSERT INTO results (title, description) VALUES ('Introvert | Sensing | Feeling | Perceiving', 'You are a type ISFP, aka The Composer. You tend to be loyal and adaptable above all else. You should consider a job in teaching or nursing.');

INSERT INTO results (title, description) VALUES ('Introvert | Intuitive | Feeling | Perceiving', 'You are a type INFP, aka The Healer. You tend to be empathetic and inquisitive above all else. You should consider a job in writing or graphic design.');

INSERT INTO results (title, description) VALUES ('Introvert | Intuitive | Thinking | Perceiving', 'You are a type INTP, aka The Architect. You tend to be curious and analytical above all else.  You should consider a job in architecture or construction.');

INSERT INTO results (title, description) VALUES ('Extravert | Sensing | Thinking | Perceiving', 'You are a type ESTP, aka The Promoter. You tend to be energetic and realistic above all else. You should consider a job in sales or forestry.');

INSERT INTO results (title, description) VALUES ('Extravert | Sensing | Feeling | Perceiving', 'You are a type ESFP, aka The Performer. You tend to be caring and resourceful above all else. You should consider a job in hospitality or health care.');

INSERT INTO results (title, description) VALUES ('Extravert | Intuitive | Feeling | Perceiving', 'You are a type ENFP, aka The Champion. You tend to be imaginative and insightful above all else. You should consider a job in therapy or acting.');

INSERT INTO results (title, description) VALUES ('Extravert | Intuitive | Thinking | Perceiving', 'You are a type ENTP, aka The Inventor. You tend to be enthusiastic and theoretical above all else. You should consider a job in business or sports.');

INSERT INTO results (title, description) VALUES ('Extravert | Sensing | Thinking | Judging', 'You are a type ESTJ, aka The Supervisor. You tend to be logical and assertive above all else. You should consider a job in leadership or law.');

INSERT INTO results (title, description) VALUES ('Extravert | Sensing | Feeling | Judging', 'You are a type ESFJ, aka The Provider. You tend to be sociable and caring above all else.
You should consider a job in childcare or healthcare.');

INSERT INTO results (title, description) VALUES ('Extravert | Intuitive | Feeling | Judging', 'You are a type ENFJ, aka The Teacher. You tend to be passionate and imaginative above all else. You should consider a job in teaching or the arts.');

INSERT INTO results (title, description) VALUES ('Extravert | Intuitive | Thinking | Judging', 'You are a type ENTJ, aka The Field Marshall. You tend to be organized and logical above all else. You were born to lead and can help steer an organization towards their vision, using your excellent organizing and
understanding of what needs to get done.');


INSERT INTO requirements (title,education,years) VALUES ('University Professor' , 'A doctoral degree in the field of specialization is required for university professors. A masters degree in the field of specialization is required for university lecturers. Licences or professional certification may be required for professors teaching future practitioners in certain professionally regulated fields, such as medicine, engineering, architecture, psychology or law.' , 8);

INSERT INTO requirements (title,education,years) VALUES ('Software Consultant' , 'A bachelors degree in computer science, computer systems engineering, software engineering, business administration or a related discipline or Completion of a college program in computer science is usually required.
Experience as a computer programmer is usually required. 
Certification or training provided by software vendors may be required by some employers.' , 4);

INSERT INTO requirements (title,education,years) VALUES ('Credit Consultant' , 'Completion of secondary school and extensive general banking experience is usually required.
A bachelors degree or college diploma related to commerce or economics may be required.
A mutual funds license is usually required.
Registration with the securities regulatory authority in the province or territory of employment is usually required.
Completion of a loan or credit training program, ranging from six to twelve months, is usually required.
Various training programs and courses are offered by the Institute of Canadian Bankers and may be required by employers.
Financial services officers who sell regulated financial products and investments are required to be licensed by the appropriate governing body.' , 2);

INSERT INTO requirements (title,education,years) VALUES ('Judge' , 'Extensive experience as a lawyer or as a professor of law with continuous membership in the bar association is usually required.
Membership in good standing with a provincial or territorial law society or bar association is required.
Judges are appointed by federal or provincial cabinets.
Those appointed to more senior positions in a court, such as chief justice, usually have experience as judges in that court.' , 8);

INSERT INTO requirements (title,education,years) VALUES ('Executive Director' , 'A university degree in business administration, commerce, computer science or other discipline related to the service provided is usually required.
Several years of experience as a middle manager in financial, communications or other business services are usually required.
Specialization in a particular functional area or service is possible through specific university training in that area or through previous experience.
Senior managers in finance usually require a professional accounting designation.' , 5);


INSERT INTO programs (requirement_id, title, grade_average, required_courses) VALUES (2, 'Ryerson University - Business Technology Management', 'High 70s, Mid 80s', ARRAY['English (ENG4U/EAE4U preferred)', 'Mathematics: One of Advanced Functions (MHF4U), Calculus and Vectors (MCV4U) or Mathematics of Data Management (MDM4U)','Grade 12 U Calculus and Vectors (MCV4U) is the preferred Mathematics course.']);

INSERT INTO programs (requirement_id, title, grade_average, required_courses) VALUES (2, 'Mohawk College - Computer Systems Technician: Software Support', 'N/A', ARRAY['Grade 12 English, C or U or equivalent', 'Grade 12 Mathematics, MAP4C ≥ 60%; or MCT4C; or any U or equivalent']);

INSERT INTO programs (requirement_id, title, grade_average, required_courses) VALUES (2, 'University of Toronto - Computer Science (Major, Minor, Specialist)', 'Low 90s, High 80s', ARRAY['Calculus & Vectors (MCV4U)', 'English (ENG4U)']);

INSERT INTO programs (requirement_id, title, grade_average, required_courses) VALUES (2, 'triOS College - Information Technology Professional Diploma', 'N/A', ARRAY['High School Graduation Diploma or Mature Student Status (18 years of age and academic achievement assessment passed).']);

INSERT INTO programs (requirement_id, title, grade_average, required_courses) VALUES (2, 'University of Waterloo - Business Administration (Laurier) and Computer Science (Waterloo) Double Degree', 'Mid 90s', ARRAY['Advanced Functions', 'Calculus and Vectors', 'Any Grade 12 U English','One other 4U course','Recommended course: Grade 11 U Introduction to Computer Science']);

INSERT INTO programs (requirement_id, title, grade_average, required_courses) VALUES (2, 'McMaster University - Engineering', 'High 80s', ARRAY['ENG4U', 'MCV4U', 'SCH4U', 'SPH4U']);






INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,1,'University Professor', 'University professors and lecturers teach courses to undergraduate and graduate students and conduct research at universities. University professors can also be head of departments.', 49.57, 'Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,2,'Computer Consultant', 'Information systems analysts and consultants analyze and test systems requirements, develop and implement information systems development plans, policies and procedures, and provide advice on a wide range of information systems issues. They are employed in information technology consulting firms and in information technology units throughout the public and private sectors, or they may be self-employed.', 39.10, 'Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,3,'Credit Investigator', 'Financial sales representatives sell basic deposit, investment and loan products and services to individuals and businesses. They work in banks, credit unions, trust companies and similar financial institutions.', 21.63, 'Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,4,'Judge', 'Judges adjudicate civil and criminal cases and administer justice in courts of law. Judges may specialize in particular areas of law such as civil, criminal or family law. They pass sentence on persons convicted in cases and determine damages or other appropriate remedy in civil cases.', 144.04, 'Undetermined');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,5,'Executive Director', 'Senior managers in financial, communications and other business services are usually appointed by a board of directors, to which they report. They work either alone or in conjunction with the board of directors to develop and establish objectives for the company, and to develop or approve policies and programs. They plan, organize, direct, control and evaluate, through middle managers, the operations of their organization in relation to established objectives.', 53.37, 'Undetermined');

INSERT INTO attempts (user_id,result_id) VALUES (1,1);

INSERT INTO favourites (user_id,career_id) VALUES (1,1);
INSERT INTO mentors (user_id,career_id) VALUES (1,1);

INSERT INTO conversations (user_id,mentor_id) VALUES (1,1);

INSERT INTO messages (user_id, conversation_id, message) VALUES (1,1,'Message content');

INSERT INTO questions (content) VALUES ('Question content');

INSERT INTO answers (question_id, content) VALUES (1,'Answer content');

