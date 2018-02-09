pipeline {
  agent any

  triggers { pollSCM('*/15 * * * *') }

  stages {
    stage('clean') {
      steps {
        sh 'rm -rf public/*'
      }
    }

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
