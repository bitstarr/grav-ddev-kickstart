---
title: Kontakt
cache_enable: false
taxonomy:
  navarea: ['main', 'footer']

form:
  name: kontakt
  action: "#kontakt"
  scope: ''
  classes: form
  fields:
    name:
      id: field-name
      label: THEME_C.FORM.FIELD.NAME
      placeholder: THEME_C.FORM.FIELD.NAME_PH
      autocomplete: on
      type: text
      outerclasses: encapsulate
      validate:
        required: true

    email:
      id: field-email
      label: THEME_C.FORM.FIELD.EMAIL
      placeholder: THEME_C.FORM.FIELD.EMAIL_PH
      type: email
      outerclasses: encapsulate
      validate:
        required: true

    phone:
      id: field-phone
      label: THEME_C.FORM.FIELD.PHONE
      placeholder: THEME_C.FORM.FIELD.PHONE_PH
      type: text
      outerclasses: encapsulate

    text:
      id: field-text
      label: THEME_C.FORM.FIELD.MESSAGE
      placeholder: THEME_C.FORM.FIELD.MESSAGE_PH
      type: textarea
      outerclasses: encapsulate
      rows: 4
      validate:
        required: true

    personality:
      id: field-personality
      outerclasses: inputpeel
      label: THEME_C.FORM.FIELD.SPAM_Q
      type: radio
      options:
        robert: Robert
        pablo: Pablo
        valentino: Valentino
      validate:
        required: true
        pattern: "^pablo$"
        message: THEME_C.FORM.FIELD.SPAM_FAIL

    dsgvo:
      id: field-dsgvo
      label: THEME_C.FORM.FIELD.DSGVO
      type: checkbox
      markdown: true
      validate:
        required: true

  buttons:
    - type: submit
      value: THEME_C.FORM.FIELD.SUBMIT

  process:
    email:
      from: "{{ config.plugins.email.from }}"
      from_name: "{{ form.value.name }}"
      to: "{{ config.plugins.email.to }}"
      reply_to: "{{ form.value.email }}"
      subject: "Anfrage via Kontaktformular"
      body: "{% include 'email/contact.txt.twig' %}"
      content_type: 'text/plain'

    # save:
    #   fileprefix: contact-
    #   dateformat: Ymd-His-u
    #   extension: txt
    #   body: "{% include 'email/contact.txt.twig' %}"

    message: THEME_C.FORM.THANKS
    reset: true
---

Firma GmbH<br>
Einsteinstraße 12<br>
09111 Chemnitz

Telefon: (+49) 371 / 12 34 56<br>
E-Mail: [email link=true]info@domain.de[/email]
