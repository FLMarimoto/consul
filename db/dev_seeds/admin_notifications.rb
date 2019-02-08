section "Creating Admin Notifications & Templates" do
  AdminNotification.create!(
    title_en: 'Do you have a proposal?',
    title_es: 'Tienes una propuesta?',
    title_pt_br: 'Você tem uma proposta?',

    body_en: 'Remember you can create a proposal with your ideas and people will discuss and support it.',
    body_es: 'Recuerda que puedes crear propuestas y los ciudadanos las debatirán y apoyarán.',
    body_pt_br: 'Lembre-se que você pode criar uma proposta com suas ideias para que pessoas possam discuti-las e apoia-las.',

    link: Setting['url'] + '/proposals',
    segment_recipient: 'administrators'
  ).deliver

  AdminNotification.create!(
    title_en: 'Help us translate CONSUL',
    title_es: 'Ayúdanos a traducir CONSUL',
    title_pt_br: 'Ajude-nos a traduzir o CONSUL',

    body_en: 'If you are proficient in a language, please help us translate CONSUL!.',
    body_es: 'Si dominas un idioma, ayúdanos a completar su traducción en CONSUL.',
    body_pt_br: 'Por favor, se você é proficiente em uma lingua, ajude-nos a traduzir o CONSUL.',

    link: 'https://crwd.in/consul',
    segment_recipient: 'administrators'
  ).deliver

  AdminNotification.create!(
    title_en: 'You can now geolocate proposals & investments',
    title_es: 'Ahora puedes geolocalizar propuestas y proyectos de inversión',
    title_pt_br: 'Agora você pode geolocalizar propostas e investimentos,

    body_en: 'When you create a proposal or investment you now can specify a point on a map',
    body_es: 'Cuando crees una propuesta o proyecto de inversión podrás especificar su localización en el mapa',
    body_pt_br: 'Quando você cria uma proposta ou investimento você pode especificar sua localização no mapa', 

    segment_recipient: 'administrators'
  ).deliver

  AdminNotification.create!(
    title_en: 'We are closing the Participatory Budget!!',
    title_es: 'Últimos días para crear proyectos de Presupuestos Participativos',
    title_pt_br: 'Últimos dias para criar projetos de Orçamentos Participativos', 

    body_en: 'Hurry up and create a last proposal before it ends next in few days!',
    body_es: 'Quedan pocos dias para que se cierre el plazo de presentación de proyectos de inversión para los presupuestos participativos!',
    body_pt_br: 'Faltam poucos dias para que se encerre o prazo para a apresentação de projetos de investimento para os orçamentos participativos',

    segment_recipient: 'administrators',
    sent_at: nil
  )
end
