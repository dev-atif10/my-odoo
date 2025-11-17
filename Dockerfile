

FROM odoo:19
 
USER root
ENV HOST=${HOST}
ENV USER=${USER}
ENV PASSWORD=${PASSWORD}
 
# لو تحتاج تثبيت أي مكتبات إضافية تقدر تضيفها هنا
# مثلاً: RUN apt-get update && apt-get install -y git

# غير الأذونات إذا لزم الأمر لمجلد الإضافات
RUN mkdir -p /customs \
    && chown -R odoo:odoo /customs

USER odoo

EXPOSE 8069

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
