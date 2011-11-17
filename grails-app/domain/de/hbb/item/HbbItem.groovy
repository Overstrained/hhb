package de.hbb.item

class HbbItem {
	String name
	BigDecimal amount
	Date date

    static constraints = {
		name(blank:false,nullable:false)
		amount(blank:false,nullable:false)
		date(blank:false,nullable:false)
    }
}
