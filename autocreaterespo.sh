stage('Create GitHub Repository') {
  steps {
    script {
      def github = github()
      def repoName = env.JOB_NAME.replace("/", "-")
      def ghRepo = github.getRepository("your-github-username/${repoName}")
      
      ghRepo.create()
    }
  }
}
