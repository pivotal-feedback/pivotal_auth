Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
      :idp_sso_target_url                 => 'YOUR OKTA LOGIN URL',
      :idp_sso_target_url_runtime_params  => {:original_request_param => :mapped_idp_param},
      :idp_cert_fingerprint               => 'YOUR OKTA CERT FINGERPRINT'
end
