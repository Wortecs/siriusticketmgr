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

	tpl := template.New("loggin").Delims("{%", "%}")
	t, e := tpl.ParseFiles("./templates/base.tpl", "./templates/loggin.tpl")
	Templates["loggin"] = template.Must(t, e)

	tpl = template.New("notfound").Delims("{%", "%}")
	t, e = tpl.ParseFiles("./templates/base.tpl", "./templates/notfound.tpl")
	Templates["notfound"] = template.Must(t, e)

	// main := template.New("main").Delims("{%", "%}")
	// t, e := main.ParseFiles("./templates/base.tpl", "./templates/main.tpl")
	// Templates["main"] = template.Must(t, e)

	tpl = template.New("logginerror").Delims("{%", "%}")
	t, e = tpl.ParseFiles("./templates/base.tpl", "./templates/logginerror.tpl")
	Templates["logginerror"] = template.Must(t, e)

	//t, e = template.New("404").ParseFiles("./web/templates/base.tpl", "./web/templates/not_found.tpl")
	//Templates["Notfound"] = template.Must(t, e)
}
