function createGradleProject() {
   gradleExists=$(command -v gradle)
   if !command -v gradle > /dev/null 2>&1; then
      echo "Gradle not installed.  Please install gradle and try again"
   fi

   if [[ $# -ne 1 ]] then
      echo "Usage: createGradleProject [projectName]"
      return
   fi

   projectName=$1
   mkdir $projectName
   cd $projectName
   gradle init --type java-application --dsl kotlin 
}
