package handler

import (
	"log"

	"github.com/Wortecs/siriusticketmgr/core/database"
	"github.com/Wortecs/siriusticketmgr/core/web/view"
	"github.com/gin-gonic/contrib/sessions"
	"github.com/gin-gonic/gin"
)

//Handler show Loggin page to user
func LogginHandler(c *gin.Context) {
	err := view.Templates["loggin"].ExecuteTemplate(
		c.Writer,
		"base",
		0,
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
