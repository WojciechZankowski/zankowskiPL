WORKING_DIR="${1:-${PWD}}"
DIST_DIRECTORY=${WORKING_DIR}/dist
THEME_SRC=${WORKING_DIR}/src/theme
RESUME_SRC=${WORKING_DIR}/src

rm -rf ${DIST_DIRECTORY}

mkdir -p ${DIST_DIRECTORY}/resumes

hackmyresume build ${RESUME_SRC}/resume.json TO ${DIST_DIRECTORY}/resumes/resume.html -t ${THEME_SRC}
hackmyresume build ${RESUME_SRC}/resume.json TO ${DIST_DIRECTORY}/resumes/resume.pdf -t ${THEME_SRC}

cp ${DIST_DIRECTORY}/resumes/resume.html ${DIST_DIRECTORY}/index.html
