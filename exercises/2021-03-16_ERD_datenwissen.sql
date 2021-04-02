CREATE TABLE `applicant` (
	`applicantno`	number	NOT NULL,
	`postcode`	number	NULL,
	`address`	varchar2(150)	NULL,
	`married`	char(1)	NULL,
	`hometown`	varchar2(20)	NULL,
	`contactno`	varchar2(20)	NULL,
	`juminno`	number	NULL,
	`korname`	varchar2(20)	NULL,
	`hanja`	varchar2(20)	NULL,
	`regdate`	date	NULL
);

CREATE TABLE `workexp` (
	`seniority`	number	NOT NULL,
	`applicantno`	number	NOT NULL,
	`jobpos`	varchar2	NULL,
	`loc`	varchar2	NULL,
	`job`	varchar2	NULL,
	`sal`	number	NULL,
	`quitcause`	varchar2	NULL,
	`startdate`	date	NULL,
	`enddate`	date	NULL
);

CREATE TABLE `applicant_extra` (
	`applicantno`	number	NOT NULL,
	`bloodtype`	char(2)	NULL,
	`height`	number	NULL,
	`weight`	number	NULL,
	`eyeleft`	number	NULL,
	`eyeright`	number	NULL,
	`religion`	varchar2	NULL,
	`skills`	varchar2	NULL,
	`hobby`	varchar2	NULL
);

CREATE TABLE `schoolrecord` (
	`applicantno`	number	NOT NULL,
	`degreecode`	number	NOT NULL,
	`school`	varchar2	NULL,
	`diplomadate`	date	NULL,
	`address`	varchar2	NULL,
	`majorcode`	number	NOT NULL
);

CREATE TABLE `degreetable` (
	`degreecode`	number	NOT NULL,
	`degreename`	varchar2	NULL
);

CREATE TABLE `major` (
	`majorcode`	number	NOT NULL,
	`majorname`	varchar2	NULL
);

CREATE TABLE `family` (
	`famorder`	number	NOT NULL,
	`applicantno`	number	NOT NULL,
	`relation`	varchar2	NULL,
	`name`	varchar2	NULL,
	`job`	varchar2	NULL,
	`jobaddr`	varchar2	NULL,
	`jobpos`	varchar2	NULL
);

CREATE TABLE `training` (
	`trainno`	number	NOT NULL,
	`applicantno2`	number	NOT NULL,
	`schoolname`	varchar2	NULL,
	`curric`	varchar2	NULL,
	`trainperiod`	varchar2	NULL
);

CREATE TABLE `performance` (
	`taskno`	number	NOT NULL,
	`seniority`	number	NOT NULL,
	`applicantno`	number	NOT NULL,
	`taskdesc`	varchar2	NULL,
	`taskperiod`	varchar2	NULL
);

CREATE TABLE `langs` (
	`langcode`	number	NOT NULL,
	`langname`	varchar2	NULL
);

CREATE TABLE `langskills` (
	`applicantno`	number	NOT NULL,
	`langcode`	number	NOT NULL,
	`langgrade`	varchar2	NULL
);

CREATE TABLE `certif` (
	`certifcode`	number	NOT NULL,
	`certifname`	varchar2	NULL
);

CREATE TABLE `havecertif` (
	`certifcode`	number	NOT NULL,
	`applicantno`	number	NOT NULL,
	`certifdate`	date	NULL
);

CREATE TABLE `apply_loc` (
	`applicantno`	number	NOT NULL,
	`loccode`	number	NOT NULL
);

CREATE TABLE `loc` (
	`loccode`	number	NOT NULL,
	`locname`	varchar2	NULL
);

ALTER TABLE `applicant` ADD CONSTRAINT `PK_APPLICANT` PRIMARY KEY (
	`applicantno`
);

ALTER TABLE `workexp` ADD CONSTRAINT `PK_WORKEXP` PRIMARY KEY (
	`seniority`,
	`applicantno`
);

ALTER TABLE `applicant_extra` ADD CONSTRAINT `PK_APPLICANT_EXTRA` PRIMARY KEY (
	`applicantno`
);

ALTER TABLE `schoolrecord` ADD CONSTRAINT `PK_SCHOOLRECORD` PRIMARY KEY (
	`applicantno`,
	`degreecode`
);

ALTER TABLE `degreetable` ADD CONSTRAINT `PK_DEGREETABLE` PRIMARY KEY (
	`degreecode`
);

ALTER TABLE `major` ADD CONSTRAINT `PK_MAJOR` PRIMARY KEY (
	`majorcode`
);

ALTER TABLE `family` ADD CONSTRAINT `PK_FAMILY` PRIMARY KEY (
	`famorder`,
	`applicantno`
);

ALTER TABLE `training` ADD CONSTRAINT `PK_TRAINING` PRIMARY KEY (
	`trainno`,
	`applicantno2`
);

ALTER TABLE `performance` ADD CONSTRAINT `PK_PERFORMANCE` PRIMARY KEY (
	`taskno`,
	`seniority`,
	`applicantno`
);

ALTER TABLE `langs` ADD CONSTRAINT `PK_LANGS` PRIMARY KEY (
	`langcode`
);

ALTER TABLE `langskills` ADD CONSTRAINT `PK_LANGSKILLS` PRIMARY KEY (
	`applicantno`,
	`langcode`
);

ALTER TABLE `certif` ADD CONSTRAINT `PK_CERTIF` PRIMARY KEY (
	`certifcode`
);

ALTER TABLE `havecertif` ADD CONSTRAINT `PK_HAVECERTIF` PRIMARY KEY (
	`certifcode`,
	`applicantno`
);

ALTER TABLE `apply_loc` ADD CONSTRAINT `PK_APPLY_LOC` PRIMARY KEY (
	`applicantno`
);

ALTER TABLE `loc` ADD CONSTRAINT `PK_LOC` PRIMARY KEY (
	`loccode`
);

ALTER TABLE `workexp` ADD CONSTRAINT `FK_applicant_TO_workexp_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `applicant_extra` ADD CONSTRAINT `FK_applicant_TO_applicant_extra_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `schoolrecord` ADD CONSTRAINT `FK_applicant_TO_schoolrecord_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `schoolrecord` ADD CONSTRAINT `FK_degreetable_TO_schoolrecord_1` FOREIGN KEY (
	`degreecode`
)
REFERENCES `degreetable` (
	`degreecode`
);

ALTER TABLE `family` ADD CONSTRAINT `FK_applicant_TO_family_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `training` ADD CONSTRAINT `FK_applicant_TO_training_1` FOREIGN KEY (
	`applicantno2`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `performance` ADD CONSTRAINT `FK_workexp_TO_performance_1` FOREIGN KEY (
	`seniority`
)
REFERENCES `workexp` (
	`seniority`
);

ALTER TABLE `performance` ADD CONSTRAINT `FK_workexp_TO_performance_2` FOREIGN KEY (
	`applicantno`
)
REFERENCES `workexp` (
	`applicantno`
);

ALTER TABLE `langskills` ADD CONSTRAINT `FK_applicant_TO_langskills_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `langskills` ADD CONSTRAINT `FK_langs_TO_langskills_1` FOREIGN KEY (
	`langcode`
)
REFERENCES `langs` (
	`langcode`
);

ALTER TABLE `havecertif` ADD CONSTRAINT `FK_certif_TO_havecertif_1` FOREIGN KEY (
	`certifcode`
)
REFERENCES `certif` (
	`certifcode`
);

ALTER TABLE `havecertif` ADD CONSTRAINT `FK_applicant_TO_havecertif_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

ALTER TABLE `apply_loc` ADD CONSTRAINT `FK_applicant_TO_apply_loc_1` FOREIGN KEY (
	`applicantno`
)
REFERENCES `applicant` (
	`applicantno`
);

