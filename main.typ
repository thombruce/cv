#import "@preview/lavandula:0.1.1": *

#show: lavandula-theme.with(
  custom-colors: (
    primary: rgb(213, 31, 6),
    secondary: rgb(213, 31, 6).lighten(95%),
  )
)

#set text(lang: "en")
#set document(
  title: "Thom Bruce (CV)",
  author: "Thom Bruce",
  date: none,
)

#cv(
  sidebar-position: "left",
  sidebar: [
    = Thom Bruce
    ==== Web & Software Developer

    #contact-list(
      yaml("data/contact.yaml")
    )

    #sidebar-section(title: "About me")[
      #set par(justify: true)
      #show par: it => block(width: 100%, it)

      Detail-oriented and self-motivated Web Developer with over #highlight[#(datetime.today().year() - 2012) years of experience] building responsive and reactive web applications and API-driven backend services.

      #skill-group(
        name: "Dev Environment",
        icon: "laptop",
        skills: (
          "Razer Blade Stealth 13\"",
          "Arch Linux",
          "Kitty",
          "tmux",
          "Zsh",
          "Neovim",
        )
      )

      #emph[https://github.com/thombruce/.dotfiles]
    ]

    #sidebar-section(title: "Technical skills")[

      #for (skillGroup) in yaml("data/skills.yaml") {
        skill-group(
          name: skillGroup.name,
          icon: skillGroup.icon,
          icon-solid: true,
          skills: skillGroup.skills,
        )
      }

   ]
   
    // NOTE: skill-levels do not render properly in PDF - this is a known issue ; upgrade to development version to use
    // #sidebar-section(title: "Languages")[
    //   #skill-levels((
    //     // Example flag icons from https://github.com/gosquared/flags/tree/master/flags/flags-iso/shiny/64 (under MIT license)
    //     (icon: image("assets/flags/gb.png"), text: "English", level: 100%),
    //     (icon: image("assets/flags/fr.png"), text: "French", level: 60%),
    //   ))
    // ]
  ],
  main-content: [
    #section(title: "Experience")[
      #section-element(
        title: "Full Stack Web Developer @ Propheris",
        info: [_2019 --- Present_],
        [
          Part of a small web development team, building and maintaining a patient research platform for the #highlight[NHS] written in #highlight[Ruby on Rails].
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "lock", text: [Maintained strong data privacy standards and secure code in line with patient confidentiality standards.]),
            (icon: "chalkboard-user", text: [Rewrote documentation providing clearer guidelines for junior developers and code deployment practises.]),
            (icon: "users", text: [Engaged in peer code review with other developers, both senior and junior, to maintain code quality.])
          ))
        ],
      )

      #section-element(
        title: "Full Stack Software Developer @ Imfuna",
        info: [_2017 --- 2018_],
        [
          Property inspection API written in #highlight[Ruby on Rails] serving a mobile application built using #highlight[Cordova].
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "server", text: [Took the lead on #highlight[API] development and maintainence, ensuring a securely accessible backend for our mobile application.]),
            (icon: "mobile", text: [Contributed to the frontend development of a mobile application using #highlight[React] and built with #highlight[Cordova].]),
          ))
        ],
      )

      #section-element(
        title: "Full Stack Web Developer @ FlexMR",
        info: [_2016 --- 2017_],
        [
          Market research platform focused on providing rich data insights.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "database", text: [Extensive use of raw #highlight[SQL] queries to improve the efficiency of complex research insights.]),
            (icon: "database", text: [Polymorphism and advanced table joins enabling custom data types via Ruby on Rails' #highlight[ActiveRecord].]),
          ))
        ]
      )

      #section-element(
        title: "Lead Web Developer @ Print Graphic Ltd",
        info: [_2015_],
        [
          Taken on as the sole web developer, expanding the offering of a print design firm and implementing in code the works of a small design team.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "php", icon-solid: true, text: [Managed backend CMS platforms, WordPress and Joomla, based on PHP.]),
            (icon: "bootstrap", icon-solid: true, text: [Built frontend content websites using #highlight[Bootstrap CSS]]),
          ))
        ]
      )

      #section-element(
        title: "Full Stack Web Developer @ Independent",
        info: [_2013 --- 2016_],
        [
          Always keen to maintain up-to-date knowledge of web development frameworks and practises.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "gem", icon-solid: true, text: [Developed several #highlight[Ruby on Rails] applications and #highlight[Open Source] plugins.]),
            (icon: "wordpress", icon-solid: true, text: [Managed client #highlight[WordPress] sites, developing backend plugins and frontend UIs.]),
          ))
        ]
      )

      #section-element(
        title: "Full Stack Software Developer @ Rocket Dog Creative",
        info: [_2012 --- 2013_],
        [
          Joined a small team of developers building and maintaining #highlight[Ruby on Rails] applications for several international clients.
        ]
      )
     
      #section-element(
        title: "Full Stack Web Developer @ View From Here",
        info: [_2012_],
        [
          Solo developer contracted to rewrite a dated market research platform.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "gem", icon-solid: true, text: [Rewrote a PERL-based market research web application and API in #highlight[Ruby on Rails].]),
          ))
        ]
      )

      #section-element(
        title: "Web Administrator @ Aban Technology",
        info: [_2011 --- 2012_],
        [Managed web-based sales and services for a small security equipment supplier, inclusive of writing and amending the #highlight[HTML] markup and #highlight[CSS] for storefront pages.]
      )

    ]

    #section(title: "Education")[
      #section-element-advanced(
        title: "University of Cumbria",
        info-top-left: "2011",
        info-top-right: "Carlisle, UK",
        icon: fa-icon("circle-half-stroke"),
        [
          #set text(size: sizes.text-s2)
          _B.A. (Hons) Film and Television Production_ (#highlight[2:1])
          #icon-list((
            (icon: "graduation-cap", text: [Relevant experience: Teamwork, Strong Communication, Longterm Execution of Complex Goals]),
            (icon: "futbol", text: [Activities: Student Ambassador (Promoting Higher Education to prospective students and school pupils)]),
          ))
        ],
      )
    ]
  ],
)
