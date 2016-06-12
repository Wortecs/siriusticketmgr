package view

import "html/template"

type HeaderParams struct {
	IsAdmin    bool
	IsSuperior bool
	Link       string
}

type GlobalParam struct {
	LoginAddress string
}

var Templates map[string]*template.Template

func init() {
	Templates = make(map[string]*template.Template)

	main := template.New("main").Delims("{%", "%}")

	t, e := main.ParseFiles("./templates/base.tpl", "./templates/main.tpl")
	Templates["main"] = template.Must(t, e)

	loggin := template.New("loggin").Delims("{%", "%}")
	t, e = loggin.ParseFiles("./templates/loggin.tpl")
	Templates["loggin"] = template.Must(t, e)

	errorlogin := template.New("logginerror").Delims("{%", "%}")
	t, e = errorlogin.ParseFiles("./templates/logginerror.tpl")
	Templates["logginerror"] = template.Must(t, e)
	//t, e = template.New("404").ParseFiles("./web/templates/base.tpl", "./web/templates/not_found.tpl")
	//Templates["Notfound"] = template.Must(t, e)
}
