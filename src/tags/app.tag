<app>
    <div class="container">
            <h1>
                People and their Favorite Color
            </h1>

        <form onsubmit="{handlesubmit}">
            <input type="text" ref="name" placeholder="Name">
            <input type="text" ref="favcolor" placeholder="Favorite Color">

            <input type="submit" value="OK">

        </form>

        <button onclick="{handleDelete}">Delete Last One!!</button>
        
        <div class="row">
            <people-list  mypeople = '{people}' class="col-sm"/>
            <people-table myheader='{header}' mypeople='{people}' class="col-sm"/>
        </div>


    </div>
    <script>
        this.header = ['Name', 'Favorite Color']
        this.people = [
            {
                name: "Bob",
                favcolor: "Yellow"
            },
            {
                name: "Michelle",
                favcolor: "Purple"
            },
            {
                name: "Paul",
                favcolor: "Black"
            }
        ]

        this.handlesubmit = (e) => {
            e.preventDefault()
            
            console.log(this.refs)
            const name = this.refs.name.value
            const favcolor = this.refs.favcolor.value

            //this.people = [...this.people,{name,favcolor}]
            this.people.push({ name: name,favcolor: favcolor})

        }

        this.handleDelete = (e) => {
            this.people.pop()

        }
    </script>
</app>