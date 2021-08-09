-- populating walkin-listing

-- add new location
insert into location (location)	
values ("Mumbai");

-- add ne venue
insert into walk_in_venue(venue)
values ("Zeus Systems Pvt. Ltd. 1402, 14th Floor, Tower B, Peninsula Business Park. Ganpatrao Kadam Marg Lower Parel (W) Mumbai - 400 013 Phone: +91-22-66600000");

-- Add the prerequisites
insert into walk_in_pre_requisites (
	gen_instruction,
    exam_instruction,
    sys_req,
    process
)	values 
	(
    "- We have a two–year indemnity for permanent candidates. We will provide training to the selected candidates. - Candidates who have appeared for any test held by Zeus Learning in the past 12 months will not be allowed to appear for this recruitment test.",
    "- Candidates are requested to log in half an hour prior to the exam start time as they would need to capture their image using a web camera. By taking this test, you are permitting the examination system to capture your video for invigilation purposes. - Candidates would not be able to appear for the exam if the web camera attached to their system is not functional. - The web camera of your system must be enabled and must remain switched on throughout the examination. In the event of non-receipt of a webcam, your examination will be considered null and void. - Candidate’s audio and video will be recorded during the examination and will also be monitored by a live proctor. The proctor may terminate your exam in case he/she observes any malpractice during the exam. - Candidates are advised to use their own Laptop/PC with a stable internet connection (min 1 Mbps) during the exam. - Candidates cannot use an iOS system/device for this exam.",
    "- Personal Laptop or Desktop computer in working condition with good quality camera (you can use Windows 7 and above). - The latest version of Google Chrome Browser only. - Please note that Internet speed should be minimum 1 Mbps. - Do not use a MacBook or iPad for the proctored exam.",
    "- Every round is an elimination round. Candidates need to clear all rounds to get selected. Round I : 4th August, 2018 Aptitude Test : 25 Questions Round II (Interview) : 4th August, 2018."
    );

-- Add new Walk-in
insert into walk_in (
    walk_in_title,
    start_date,
    end_date,
    expires,
    location_id,
    pre_requisites_id,
    venue_id
)	values 
	("Walk In for Designer Job Role","2021-07-03","2021-07-04",5,1,1,1),
    ("Walk In for Multiple Job Roles","2021-07-03","2021-07-04",NULL,1,1,1),
    ("Walk In for Design and Development Job Role","2021-07-10","2021-07-11",NULL,1,1,1);
    

-- Add roles
insert into roles (
	name,
    package,
    description,
    requirements
)	values
	(
		"Instructional Designer",
		500000,
        "- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance","- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism"
	),
    (
		"Software Engineer",
        600000,
        "- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance","- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism"
	),
    (
		"Software Quality Engineer",
        400000,
        "- Generate highly interactive and innovative instructional strategies for e-learning solutions - Develop course structure and learning specifications addressing the requirements of the target audience - Construct appropriate testing strategies to ensure learners' understanding and performance - Address usability issues - Keep abreast of new trends in e-learning - Ensure that the instructional strategies are as per global standards - Prepare instructional design checklists and guidelines - Check for quality assurance","- Experience in creating instructional plans and course maps. - Experience in the use of media like graphics, illustrations, photographs, audio, video, animations, and simulations in instruction - Awareness of different instructional design models and familiarity with instructional and learning theories - Awareness of latest trends in e-learning and instructional design - Strong client consulting/interfacing skills. - Ability to guide clients to focus on specific objectives and teaching points - Strong meeting facilitation, presentation and interpersonal skills - A thorough understanding of the web as an instructional medium - Post graduate degree in Education, Instructional Design, Mass Communication or Journalism"
	);
 
 -- Which walk-in has what roles available
insert into walk_in_roles_available (
	walk_in_id,
    role_id
)	values
	(1,1),
    (2,1),
    (2,2),
    (2,3),
    (3,1),
    (3,2);
    
-- Adding time slots
insert into time_slots (
	start_tim,
    end_time
)	values
	("09:00:00","11:00:00"),
    ("13:00:00","15:00:00");
 
-- which walk_in has what time slots available
insert into walk_in_time_slots (
	walk_in_id,
    slots_id
) values 
(1,1),
(1,2),
(2,1),
(2,2),
(3,1),
(3,2);

--  add qualifications
insert into qualification_title (name)
values ("MCA");

-- add internship
insert into intership_for (
	walk_in_walk_in_id,
    qualification_qualification_id
)	values 
	(2,1);
    
-- add user_referral
insert into user_referral(employee_name)
values("bhushan");
    
-- Add user
insert into user_info (
	user_id,
	email,
    firstname,
    lastname,
    img_path,
    contact,
    portfolio,
    resume_path,
    sub_opt,
    referral_id
) values (
	1,
	"testing@walk.in",
    "suraj",
    "balvanshi",
    "/profile.pic",
    "9892707429",-- 
    "/portfolio.url",
    "/resume.pdf",
    1,
    1
);

--  add user profession
insert into user_professional (
	bfresher,
    years_of_exp,
    current_ctc,
    expected_ctc,
    notice_date,
    notice_period,
    bapplied_recently,
    user_id
) values (
	1,
    5,
    500000,
    700000,
    "2021/01/01",
    5,
    0,
    1    
);

-- add technologies
insert into tech (name) 
values
	("Javascript"),
    ("Angular JS"),
    ("React"),
    ("Node JS"),
    ("Other");

-- add tech familiar
insert into user_tech_familiar (user_id,tech_id)
values (1,1);

-- add tech expertise
insert into user_tech_expertise (user_id,tech_id)
values (1,1);




