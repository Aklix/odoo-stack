source config

update_odoo_conf() {
    sed -i "s!^db_user =.*!db_user = $postgres_user!" odoo-config/odoo.conf
    sed -i "s!^db_password =.*!db_password = $postgres_pw!" odoo-config/odoo.conf
}

# Update Odoo Conf file
update_odoo_conf