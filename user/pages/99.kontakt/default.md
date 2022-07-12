---
title: Kontakt
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
      outerclasses: levitate
      validate:
        required: true

    email:
      id: field-email
      label: THEME_C.FORM.FIELD.EMAIL
      placeholder: THEME_C.FORM.FIELD.EMAIL_PH
      type: email
      outerclasses: levitate
      validate:
        required: true

    phone:
      id: field-phone
      label: THEME_C.FORM.FIELD.PHONE
      placeholder: THEME_C.FORM.FIELD.PHONE_PH
      type: text
      outerclasses: levitate

    text:
      id: field-text
      label: THEME_C.FORM.FIELD.MESSAGE
      placeholder: THEME_C.FORM.FIELD.MESSAGE_PH
      type: textarea
      outerclasses: levitate
      rows: 4
      validate:
        required: true

    personality:
      id: field-personality
      outerclasses: text-input
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
    matchmail: true
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

## Direkt Kontakt aufnehmen
{% include "forms/form.html.twig" with { form: forms('kontakt') } %}