package handler

import (
	"log"

	"github.com/Wortecs/siriusticketmgr/database"
	"github.com/Wortecs/siriusticketmgr/web/view"
	"github.com/gin-gonic/contrib/sessions"
	"github.com/gin-gonic/gin"
)

var serverParam = view.GlobalParam{"http://localhost:8080/"}

//Handler show Loggin page to user
func LogginHandler(c *gin.Context) {
	err := view.Templates["loggin"].ExecuteTemplate(
		c.Writer,
		"base",
		serverParam,
	)

	if err != nil {
		panic(err)
	}
}

//
func EnterHandler(c *gin.Context) {
	//TODO Find user in database
	session := sessions.Default(c)
	user := c.PostForm("loggin")
	if database.CheckLogin(user, c.PostForm("password")) {

		log.Println("Correct user data")

		session.Set("user", user)
		session.Save()
		c.Redirect(302, "/main")
		//afterLogin(c)
	} else {

		log.Println("Incorect user data")
		c.Redirect(302, "/incorect")
	}
}

func MainPageHandler(c *gin.Context) {

	session := sessions.Default(c)

	user := session.Get("user")

	if user != nil && database.CheckSesion(user.(string)) {
		username := user.(string)

		database.SetSesion(username)
		permision := database.GetUserHeaderPermision(username)

		err := view.Templates["main"].ExecuteTemplate(
			c.Writer,
			"base",
			permision,
		)

		if err != nil {
			panic(err)
		}

	} else {

		c.Redirect(302, "/")
	}

}

func IncorrectLogginHandler(c *gin.Context) {
	err := view.Templates["logginerror"].ExecuteTemplate(
		c.Writer,
		"base",
		serverParam,
	)

	if err != nil {
		panic(err)
	}
}
