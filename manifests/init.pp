class deptest {

  #include glassfish

  glassfish::create_domain { 'test':
    portbase       => 8000,
    create_service => true,
  }

}
