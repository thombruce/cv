#import "@preview/lavandula:0.1.1": *
#import "@preview/cmarker:0.1.6"

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
          // "tmux", // Just switched to using Kitty for most of what tmux previously gave me
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
      #for (job) in yaml("data/experience.yaml") {
        section-element(
          title: job.title,
          info: [#job.info],
          [
            #if job.description != "" [
              #cmarker.render(job.description)
            ]
            #set text(size: sizes.text-s2)
            #icon-list(
              job.achievements.map(achievement => (
                icon: achievement.icon,
                icon-solid: achievement.at("icon-solid", default: false),
                text: cmarker.render(achievement.text)
              ))
            )
          ],
        )
      }
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
