#---
# Excerpted from "Agile Web Development with Rails 8",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails8 for more book information.
#---
# encoding: utf-8
Product.delete_all
product = Product.create(title: 'Programming Ruby 3.3 (5th Edition)',
  description:
    %(<p>
      <em>The Pragmatic Programmers' Guide</em>
      Ruby is one of the most important programming languages in use for web
      development. It powers the Rails framework, which is the backing of some
      of the most important sites on the web. The Pickaxe Book, named for the
      tool on the cover, is the definitive reference on Ruby, a
      highly-regarded, fully object-oriented programming language. This updated
      edition is a comprehensive reference on the language itself, with a
      tutorial on the most important features of Ruby—including pattern
      matching and Ractors—and describes the language through Ruby 3.3.
    </p>),
  price: 33.95)

product.image.attach(io: File.open(
  Rails.root.join('db', 'images', 'boba_sheepy.jpeg')),
    filename: 'boba_sheepy.jpeg')

product.save!
# . . .
product = Product.create(title: 'Rails Scales!',
  description:
    %(<p>
      <em>Practical Techniques for Performance and Growth</em>
      Rails doesn’t scale. So say the naysayers. They’re wrong. Ruby on Rails
      runs some of the biggest sites in the world, impacting the lives of
      millions of users while efficiently crunching petabytes of data. This
      book reveals how they do it, and how you can apply the same techniques to
      your applications. Optimize everything necessary to make an application
      function at scale: monitoring, product design, Ruby code, software
      architecture, database access, caching, and more. Even if your app may
      never have millions of users, you reduce the costs of hosting and
      maintaining it.
    </p>),
  price: 30.95)

  product.image.attach(io: File.open(
    Rails.root.join('db', 'images', 'boba_young.JPG')),
      filename: 'boba_young.JPG')

  product.save!
# . . .
