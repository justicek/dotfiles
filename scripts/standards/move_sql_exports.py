import os, glob

# EDIT these values to reflect your configuration and standards
working_folder = "/home/pie/promethean/resources/mdredux"

### COLORADO mappings ###
co_directory_map = {
	"dance": "Colorado Academic Standards for Dance",
	"drama": "Colorado Academic Standards for Drama and Theatre Arts",
	"english": "Colorado Academic Standards for Reading, Writing, and Communication",
	"math": "Colorado Academic Standards for Mathematics",
	"music": "Colorado Academic Standards for Music",
	"pe": "Colorado Academic Standards for Comprehensive Health and Physical Education Health",
	"science": "Colorado Academic Standards for Science",
	"socialstudies": "Colorado Academic Standards for Social Studies",
	"visualarts": "Colorado Academic Standards for Visual Arts"
}

### MARYLAND mappings ###
md_directory_map = {
	"ngsci": "Next Generation Science Standards",
	"alg1": "Maryland College and Career-Ready Standards - Algebra I",
	"alg2": "Maryland College and Career-Ready Standards - Algebra II",
	"geometery": "Maryland College and Career-Ready Standards - Geometry",
	"literacy": "Maryland College and Career-Ready Disciplinary Literacy Standards",
	"mdmath": "Maryland College and Career-Ready Standards - Mathematics (PK-8)",
	"mdenglish": "Maryland College and Career-Ready Standards - English Language Arts",
	"finance": "Maryland State Curriculum - Personal Financial Literacy Education",
	"health": "Maryland State Curriculum - Health Education",
	"pe": "Maryland State Curriculum - Physical Education",
	"dance": "Maryland State Curriculum - Dance",
	"music": "Maryland State Curriculum - Music",
	"theatre": "Maryland State Curriculum - Theatre",
	"visualarts": "Maryland State Curriculum - Visual Arts",
	"mdsci": "Maryland State Curriculum - Science",
	"socialstudies": "Voluntary State Curriculum - Social Studies",
	"tech": "Maryland State Curriculum - Technology Education",
	"scicore": "Maryland Science Core Learning Goals",
	"ccenglish": "Common Core State Standards for English Language Arts & Literacy in History, Social Studies, Science, and Technical Subjects",
	"ccmath": "Common Core State Standards for Mathematics",
}

### delete me!!! ###
md2_directory_map = {
	"alg2": "Maryland College and Career-Ready Standards - Algebra II"
}

### NEXT GEN SCIENCE mapping ###
ngsci_directory_map = {
	"ngsci": "Next Generation Science Standards"
}

### TEXAS mapping ###
tx_directory_map = {
	"stats": "Texas Essential Knowledge and Skills for Mathematics - Statistics",
	"finearts": "Texas Essential Knowledge and Skills for Fine Arts",
	"dmath": "Texas Essential Knowledge and Skills for Mathematics - Discrete Mathematics for Problem Solving",
	"math": "Texas Essential Knowledge and Skills for Mathematics",
	"tech": "Texas Essential Knowledge and Skills for Technology Applications",
	"econ": "Texas Essential Knowledge and Skills for Economics with Emphasis on the Free Enterprise System and Its Benefits",
	"careerdev": "Texas Essential Knowledge and Skills for Career Development",
	"socialstudies": "Texas Essential Knowledge and Skills for Social Studies",
	"english": "Texas Essential Knowledge and Skills for English Language Arts and Reading",
	"science": "Texas Essential Knowledge and Skills for Science",
	"careerrdy": "Texas College and Career Readiness Standards",
	"health": "Texas Essential Knowledge and Skills for Health Education",
	"pe": "Texas Essential Knowledge and Skills for Physical Education",
	"lang": "Texas Essential Knowledge and Skills for Languages Other Than English",
	"amath": "Texas Essential Knowledge and Skills for Mathematics - Algebraic Reasoning"
}

### NEW JERSEY mapping ###
nj_directory_map = {
	"pe": "New Jersey Core Curriculum Content Standards for Health and Physical Education Standards",
	"visualarts": "New Jersey Core Curriculum Content Standards for Visual and Performing Arts",
	"socialstudies": "New Jersey Core Curriculum Content Standards for Social Studies",
	"science": "New Jersey Core Curriculum Content Standards for Science (NGSS)",
	"career": "New Jersey Core Curriculum Content Standards for 21st Century Life and Careers",
	"tech": "New Jersey Core Curriculum Content Standards for Technology",
	"lang": "New Jersey Core Curriculum Content Standards for World Languages",
	"math": "New Jersey Common Core State Standards for Mathematics",
	"english": "New Jersey Common Core State Standards for English Language Arts and Literacy",
}

filename_map = {
	"ls": "LearningStandard.csv",
	"lsi": "LearningStandardItem.csv",
	"lsiel": "LearningStandardItemEducationLevel.csv"
}

## CHANGE THIS TO THE STANDARD YOU NEED! ##
CURRENT_STANDARD_MAP = md2_directory_map

# create the directories if they dont yet exist
os.chdir(working_folder)
for folder in CURRENT_STANDARD_MAP.itervalues():
	if not os.path.exists(os.path.join(working_folder, folder)):
		os.makedirs(folder)

## loop over files, rename and move to correct directory
for f in glob.glob("*_ls*.csv"):
	(basename, ext) = os.path.splitext(f)
	(subject, table) = str.split(basename, '_')
	
	directory = CURRENT_STANDARD_MAP[subject]
	filename = filename_map[table]

	if directory is None or filename is None:
		raise NameError("invalid filename: " + f)

	os.rename(f, os.path.join(directory, filename)) 