pipeline {
  agent any

  triggers { pollSCM('H */4 * * *') }

  stages {

    stage('build') {
      steps {
        sh 'hugo'
      }
    }
    stage('deploy') {
      when {
        branch 'master'
      }

      steps {
        sh 'rsync -rlt --del public/ webdeploy@com1.larch.space:/usr/local/www/cindycolorado.com/'
      }
    }
  }
}
