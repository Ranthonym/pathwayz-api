-- Users table seeds here (Example)
INSERT INTO users (name, email, password) VALUES ('Asma','alice@example.com', 'password');
INSERT INTO users (name, email, password) VALUES ('Rahul', 'kira@example.com', 'password');
INSERT INTO users (name, email, password) VALUES ('Raho', 'kira@example.com', 'password');



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


INSERT INTO programs (requirement_id, title, description, required_courses, grade_average, courses) VALUES (2, 'Ryerson University - Business Technology Management', 'Combine a love for technology, business and management and study at Canada’s largest school dedicated to business management and information and communication technologies (ICT).', ARRAY['English (ENG4U/EAE4U preferred)', 'Mathematics: One of Advanced Functions (MHF4U), Calculus and Vectors (MCV4U) or Mathematics of Data Management (MDM4U)','Grade 12 U Calculus and Vectors (MCV4U) is the preferred Mathematics course.'], 'High 70s, Mid 80s', 'Managerial Decision Making, Computer-Enabled Problem Solving, Accounting, Economics, Business Process Design, and Information Systems Security and Privacy');

INSERT INTO programs (requirement_id, title, description, required_courses, grade_average, courses) VALUES (2, 'Mohawk College - Computer Systems Technician: Software Support', 'An excellent introduction to software development and supporting software applications, this program covers key topics including a variety of programming languages, web application development, systems analysis, database design, quality assurance testing, technical writing, and communication skills.', ARRAY['Grade 12 English, C or U or equivalent', 'Grade 12 Mathematics, MAP4C ≥ 60%; or MCT4C; or any U or equivalent'], '60%', 'Programming Fundamentals, HTML & CSS, Computer Training & Technical Writing, and PHP & JavaScript ');

INSERT INTO programs (requirement_id, title, description, required_courses, grade_average, courses) VALUES (2, 'University of Toronto - Computer Science (Major, Minor, Specialist)', ' The Major program in Computer Science is designed to include a solid grounding in the essentials of Computer Science, followed by options that let you explore one or a few topics more deeply. You will also realize what areas you have not studied, and be ready to explore them if your interests change after completing the Major.', ARRAY['Calculus & Vectors (MCV4U)', 'English (ENG4U)'], 'Low 90s, High 80s', 'Introduction to Computer Science, Enriched Introduction to the Theory of Computation, and Calculus');

INSERT INTO programs (requirement_id, title, description, required_courses, grade_average, courses) VALUES (2, 'triOS College - Information Technology Professional Diploma', 'Students of the Information Technology Professional diploma program will receive certification exam vouchers for Cisco, and CompTIA.', ARRAY['High School Graduation Diploma or Mature Student Status (18 years of age and academic achievement assessment passed).'], 'High school graduation diploma, or Mature Student Status', 'Installing & Configuring Windows Server, A+, Database & SQL Fundamentals, Linux Administration, Network, Mobile & Cisco Technologies, SQL Server Design');


INSERT INTO programs (requirement_id, title, description, required_courses, grade_average, courses) VALUES (2, 'University of Waterloo - Business Administration (Laurier) and Computer Science (Waterloo) Double Degree', 'Double down on your love of technology, computer science, and business. In this unique program, you’ll get two prestigious degrees and two sets of skills in high demand.', ARRAY['Advanced Functions', 'Calculus and Vectors', 'Any Grade 12 U English','One other 4U course','Recommended course: Grade 11 U Introduction to Computer Science'], 'Mid 90s', 'Algebra, Designing Functional Programs, Linear Algebra 1, Algorithm Design and Data Abstraction, and Functional Areas of the Organization');

INSERT INTO programs (requirement_id, title, description, required_courses, grade_average, courses) VALUES (2, 'McMaster University - Engineering', 'McMaster Engineers are empowered to be difference makers. We will teach you to be the engineer who sees only solutions, not problems. The one who can adapt easily to any situation, reinvent themselves throughout their career, and truly thrive in today’s dynamic technology-based economy.', ARRAY['ENG4U', 'MCV4U', 'SCH4U', 'SPH4U'], 'High 80s', 'General Chemistry for Engineering, Engineering Mathematics, Waves, Electricity, and Magnetic Fields, and Introductory to Mechanics');






INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,1,'University Professor', 'University professors and lecturers teach courses to undergraduate and graduate students and conduct research at universities. University professors can also be head of departments.', 49.57, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,2,'Computer Consultant', 'Information systems analysts and consultants analyze and test systems requirements, develop and implement information systems development plans, policies and procedures, and provide advice on a wide range of information systems issues. They are employed in information technology consulting firms and in information technology units throughout the public and private sectors, or they may be self-employed.', 39.10, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,3,'Credit Investigator', 'Financial sales representatives sell basic deposit, investment and loan products and services to individuals and businesses. They work in banks, credit unions, trust companies and similar financial institutions.', 21.63, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,4,'Judge', 'Judges adjudicate civil and criminal cases and administer justice in courts of law. Judges may specialize in particular areas of law such as civil, criminal or family law. They pass sentence on persons convicted in cases and determine damages or other appropriate remedy in civil cases.', 144.04, '☆ ☆ ☆ Undetermined');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (16,5,'Executive Director', 'Senior managers in financial, communications and other business services are usually appointed by a board of directors, to which they report. They work either alone or in conjunction with the board of directors to develop and establish objectives for the company, and to develop or approve policies and programs. They plan, organize, direct, control and evaluate, through middle managers, the operations of their organization in relation to established objectives.', 53.37, '☆ ☆ ☆ Undetermined');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Nurse', 'Registered nurses and registered psychiatric nurses provide direct nursing care to patients, deliver health education programs and provide consultative services regarding issues relevant to the practice of nursing. They are employed in a variety of settings including hospitals, nursing homes, extended care facilities, rehabilitation centres, doctors offices, clinics, community agencies, companies, private homes and public and private organizations or they may be self-employed.', 35.00, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Electrician', 'Electricians (except industrial and power system) lay out, assemble, install, test, troubleshoot and repair electrical wiring, fixtures, control devices and related equipment in buildings and other structures. They are employed by electrical contractors and maintenance departments of buildings and other establishments, or they may be self-employed.', 35.00, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Business Analyst', 'Information systems analysts and consultants analyze and test systems requirements, develop and implement information systems development plans, policies and procedures, and provide advice on a wide range of information systems issues. They are employed in information technology consulting firms and in information technology units throughout the public and private sectors, or they may be self-employed.', 39.10, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Accountant', 'Financial auditors examine and analyze the accounting and financial records of individuals and establishments to ensure accuracy and compliance with established accounting standards and procedures. Accountants plan, organize and administer accounting systems for individuals and establishments. They are employed by private sector accounting and auditing firms or departments and public sector accounting and auditing departments or units, or they may be self-employed. Articling students in accounting firms are included in this unit group.', 35.00, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Software Developer', 'Computer programmers write, modify, integrate and test computer code for software applications, data processing applications, operating systems-level software and communications software. Interactive media developers write, modify, integrate and test computer code for Internet and mobile applications, computer-based training software, computer games, film, video and other interactive media. They are employed in computer software development firms, information technology consulting firms, and in information technology units throughout the private and public sectors.', 38.46, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Truck Driver','Transport truck drivers operate heavy trucks to transport goods and materials over urban, interurban, provincial and international routes. They are employed by transportation, manufacturing, distribution and moving companies, and trucking employment service agencies, or they may be self-employed. This unit group also includes drivers of special purpose trucks and shunters who move trailers to and from loading docks within trucking yards or lots.', 21.00, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Secondary School Teacher', 'Secondary school teachers prepare and teach academic, technical, vocational or specialized subjects at public and private secondary schools. Secondary school teachers who are heads of departments are included in this unit group.', 45.05, '★ ☆ ☆ Limited');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Plumber', 'Plumbers install, repair and maintain pipes, fixtures and other plumbing equipment used for water distribution and waste water disposal in residential, commercial and industrial buildings. They are employed in maintenance departments of factories, plants and similar establishments, by plumbing contractors, or they may be self-employed.', 28.00, '★ ★ ☆ Fair ');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Pharmacist', 'Community pharmacists and hospital pharmacists compound and dispense prescribed pharmaceuticals and provide consultative services to both clients and health care providers. They are employed in retail and health centre pharmacies, or they may be self-employed. Industrial pharmacists participate in the research, development, promotion and manufacture of pharmaceutical products. They are employed in pharmaceutical companies and government departments and agencies.', 45.98, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Psychologist', 'Psychologists assess and diagnose behavioural, emotional and cognitive disorders, counsel clients, provide therapy, conduct research and apply theory relating to behaviour and mental processes. Psychologists help clients work toward the maintenance and enhancement of psychological, physical, intellectual, emotional, social and interpersonal functioning. They work in private practice or in clinics, correctional facilities, hospitals, mental health facilities, rehabilitation centres, community service organizations, businesses, schools and universities, and in government and private research agencies.', 40.00, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Financial Analyst', 'Financial and investment analysts collect and analyze financial information such as economic forecasts, trading volumes and the movement of capital, financial backgrounds of companies, historical performances and future trends of stocks, bonds and other investment instruments to provide financial and investment or financing advice for their company or their companys clients. Their studies and evaluations cover areas such as takeover bids, private placements, mergers or acquisitions.', 33.17, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Graphic designer', 'Graphic designers conceptualize and produce graphic art and visual materials to effectively communicate information for publications, advertising, films, packaging, posters, signs and interactive media such as Web sites and CDs. They are employed by advertising and graphic design firms, by establishments with advertising or communications departments and by multimedia production companies, or they may be self-employed.', 24.02, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Lawyer', 'Lawyers and Quebec notaries advise clients on legal matters, represent clients before administration boards and draw up legal documents such as contracts and wills. Lawyers also plead cases, represent clients before tribunals and conduct prosecutions in courts of law. Lawyers are employed in law firms and prosecutors offices. Quebec notaries are employed in notary offices. Both lawyers and Quebec notaries are employed by federal, provincial and municipal governments and various business establishments or they may be self-employed. Articling students are included in this unit group.', 56.81, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Interior Designer', 'Interior designers and interior decorators conceptualize and produce aesthetic, functional and safe designs for interior spaces in residential, commercial, cultural, institutional and industrial buildings. They are employed by architectural and interior design firms, retail establishments, construction companies, hospitals, airlines, hotel and restaurant chains, and other establishments, or they may be self-employed.', 20.00, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Data Scientist', 'Database analysts design, develop and administer data management solutions using database management software. Data administrators develop and implement data administration policy, standards and models. They are employed in information technology consulting firms and in information technology units throughout the private and public sectors.', 33.49, '★ ★ ★ Good');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Chemist', 'Chemists conduct research and analysis in support of industrial operations, product and process development, quality control, environmental control, medical diagnosis and treatment, biotechnology, nanotechnology and other applications. They also conduct theoretical, experimental and applied research into basic chemical and biochemical processes to create or synthesize new products and processes', 38.17, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Welder', 'Welders operate welding equipment to weld ferrous and non-ferrous metals. This unit group also includes machine operators who operate previously set up production welding, brazing and soldering equipment. They are employed by companies that manufacture structural steel and platework, boilers, heavy machinery, aircraft and ships and other metal products, and by welding contractors and welding shops, or they may be self-employed.', 25.00, '★ ★ ☆ Fair');

INSERT INTO careers (result_id, requirement_id, title,description,salary,outlook) VALUES (1,1,'Sales And Marketing Manager', 'Advertising, marketing, public relations and e-business managers plan, organize, direct, control and evaluate the activities of establishments and departments involved in commercial, industrial and e-business advertising, marketing and public relations. They are employed by commercial and industrial establishments, government departments, and advertising, marketing and public relations firms or consulting businesses.', 39.90, '★ ★ ☆ Fair');

INSERT INTO attempts (user_id,result_id) VALUES (1,1);

INSERT INTO favourites (user_id,career_id) VALUES (1,1);

INSERT INTO mentors (user_id,career_id) VALUES (2,1);
INSERT INTO mentors (user_id,career_id) VALUES (3,1);

INSERT INTO conversations (user_id,mentor_id) VALUES (1,1);
INSERT INTO conversations (user_id,mentor_id) VALUES (1,2);






INSERT INTO messages (user_id, conversation_id, message) VALUES (1,2,'Hey!');
INSERT INTO messages (user_id, conversation_id, message) VALUES (3,2,'Hey, Asmaa! How can I help you?');
INSERT INTO messages (user_id, conversation_id, message) VALUES (1,2,'Im nervous, wondering what careers are out there for me in tech?');



INSERT INTO questions (content) VALUES ('Question content');

INSERT INTO answers (question_id, content) VALUES (1,'Answer content');

