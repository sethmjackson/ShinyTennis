# this file has all of the data for tabs in the DashBoard Body of ui.R

intro = tabItem(tabName = 'Intro' ,
                fluidRow(box(width=12,
                h1('Welcome'),
                p('This app was made to visualize and analyze statistically 
                significant patterns in the data of tennis matches over 
                the last 50 years.')
                             
                             
                             
                             )
                  
                )
                )

playerData = tabItem(tabName = 'playerData',
        fluidRow(
          selectInput('chosenPlayer', label = "Choose a player", choices = tournamentWinsFiltered$winner),
          box(plotOutput("winRatios")),
          
          box(plotOutput("tournamentWins"))
         
          
          
          
          
          ),
        fluidRow( box(plotOutput("matchesPlayed")),
                  box(plotOutput("winHistogram"))
                  
                  )
        
        )

derivatives = tabItem(tabName = 'rise&Fall',
                    fluidRow(
                      selectInput('chosenPlayer', label = "Choose a player", choices = tournamentWinsFiltered$winner),
                      box(plotOutput('dWinRatioByYear'))
                    )
                    
                    )

