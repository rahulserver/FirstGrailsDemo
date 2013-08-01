package firstgrailsdemo

class Report {
    static hasMany = [school:School]
    static belongsTo = [samiti:Samiti]
    Date d
    static constraints = {

    }
}
