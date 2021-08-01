--Deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT DISTINCT ON (rt.emp_no) 
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT COUNT(ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Deliverable 2

SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Deliverable 3: Alternative Analysis

-- Mentorship eligible employees with dept
SELECT me.emp_no,
	me.first_name,
	me.last_name,
	d.dept_name
INTO dept_info_mentorship
FROM mentorship_eligibility as me
INNER JOIN dept_emp AS de
ON (me.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

-- Count of mentorship eligible employees by dept
SELECT dim.dept_name,
	COUNT(dim.emp_no)
INTO mentorship_by_dept
FROM dept_info_mentorship as dim
GROUP BY dim.dept_name
ORDER BY COUNT(dim.emp_no) DESC;

-- Mentorship eligible employees by title
SELECT me.emp_no,
	me.first_name,
	me.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO me_titles
FROM mentorship_eligibility as me
INNER JOIN titles as ti
ON me.emp_no = ti.emp_no
ORDER BY me.emp_no;

SELECT DISTINCT ON (met.emp_no) 
	met.emp_no,
	met.first_name,
	met.last_name,
	met.title
INTO me_unique_titles
FROM me_titles as met
ORDER BY met.emp_no, met.to_date DESC;

SELECT COUNT(mut.title),
	mut.title
INTO mentoree_titles
FROM me_titles as mut
GROUP BY mut.title
ORDER BY COUNT(mut.title) DESC;