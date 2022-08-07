# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seeding users...'

user1 = User.create!(username: 'Tracy', password: 'Wanjiku')
user2 = User.create!(username: 'Mwagiru', password: 'Mwagzy')

puts 'seeding mental items...'
mental1 = MentalItem.create!(title: "Anxiety", description: "An anxiety disorder is a type of mental health condition. If you have an anxiety disorder, you may respond to certain things and situations with fear and dread. You may also experience physical signs of anxiety, such as a pounding heart and sweating.

It’s normal to have some anxiety. You may feel anxious or nervous if you have to tackle a problem at work, go to an interview, take a test or make an important decision. And anxiety can even be beneficial. For example, anxiety helps us notice dangerous situations and focuses our attention, so we stay safe.

But an anxiety disorder goes beyond the regular nervousness and slight fear you may feel from time to time. An anxiety disorder happens when:

Anxiety interferes with your ability to function.
You often overreact when something triggers your emotions.
You can’t control your responses to situations.
Anxiety disorders can make it difficult to get through the day. Fortunately, there are several effective treatments for anxiety disorders.",is_favorited: "false")
mental2 = MentalItem.create!(title: "Depression", description: "What is depression?
Depression is one of the most common types of mental health conditions and often develops alongside anxiety.

Depression can be mild and short-lived or severe and long-lasting. Some people are affected by depression only once, while others may experience it multiple times.

Depression can lead to suicide, but this is preventable when appropriate support is provided. It’s important to know that much can be done to help young people who are thinking about suicide.

What causes depression?
Depression can happen as a reaction to something like abuse, violence in school, the death of someone close or family problems like domestic violence or family breakdown. Someone might get depressed after being stressed for a long time. It can also run in the family. Sometimes we may not know why it happens.", is_favorited: "false" )
mental3 = MentalItem.create!(title: "Anorexia nervosa", description: "Anorexia, formally known as anorexia nervosa, is an eating disorder. People with anorexia limit the number of calories and the types of food they eat. Eventually, they lose weight or cannot maintain an appropriate body weight based on their height, age, stature and physical health. They may exercise compulsively and/or purge the food they eat through intentional vomiting and/or misuse of laxatives.

Individuals with anorexia also have a distorted self-image of their body and have an intense fear of gaining weight.
Anorexia is a serious condition that requires treatment. Extreme weight loss in people with anorexia can lead to malnutrition, dangerous health problems and even death.", is_favorited: "false" )
mental4 = MentalItem.create!(title: "Bulimia nervosa",description: "Bulimia nervosa, also called bulimia, is an eating disorder. Eating disorders are mental health conditions that can be potentially life-threatening. If you have an eating disorder, you may have an obsession with food and weight. This obsession can harm your physical and emotional well-being.

Bulimia nervosa can be defined as a pattern of eating characterized by:

Consuming an unusually large amount of food in a short period of time (binge eating).
Getting rid of the food (purging). Purging may involve making yourself throw up (vomiting) or taking laxatives. Laxatives are medications that speed up the movement of food through your body.
Other characteristics of bulimia nervosa may include:

Misuse of water pills (diuretics) or diet pills.
Eating very little or not at all (fasting).
Excessively exercising.
Hiding food to binge and purge later.
,is_favorited: People with bulimia are usually at a normal, healthy weight. But they judge themselves harshly based on their view of their body shape and/or weight. They usually have self-esteem issues closely linked to their body image.",is_favorited: "false" )
mental5 = MentalItem.create!(title: "Schizophrenia" , description: "Schizophrenia refers to both a single condition and a spectrum of conditions that fall under the category of psychotic disorders. These are conditions where a person experiences some form of “disconnection” from reality. Those disconnections can take several different forms.

What is the difference between schizophrenia and multiple personalities?
While the name schizophrenia does come from the Greek words for “split” and “mind,” none of the conditions under schizophrenia involve multiple personalities. Instead, multiple personalities fall under a condition known as dissociative identity disorder (which was previously known as multiple personality disorder). That condition falls under the category of dissociative disorders.

", is_favorited: "false")
mental6 = MentalItem.create!(title: "Post-Traumatic Stress Disorder", description: "Posttraumatic stress disorder (PTSD) is a psychiatric disorder that may occur in people who have experienced or witnessed a traumatic event such as a natural disaster, a serious accident, a terrorist act, war/combat, or rape or who have been threatened with death, sexual violence or serious injury.

PTSD has been known by many names in the past, such as “shell shock” during the years of World War I and “combat fatigue” after World War II, but PTSD does not just happen to combat veterans. PTSD can occur in all people, of any ethnicity, nationality or culture, and at any age. PTSD affects approximately 3.5 percent of U.S. adults every year, and an estimated one in 11 people will be diagnosed with PTSD in their lifetime. Women are twice as likely as men to have PTSD. Three ethnic groups – U.S. Latinos, African Americans, and American Indians – are disproportionately affected and have higher rates of PTSD than non-Latino whites.

People with PTSD have intense, disturbing thoughts and feelings related to their experience that last long after the traumatic event has ended. They may relive the event through flashbacks or nightmares; they may feel sadness, fear or anger; and they may feel detached or estranged from other people. People with PTSD may avoid situations or people that remind them of the traumatic event, and they may have strong negative reactions to something as ordinary as a loud noise or an accidental touch.

A diagnosis of PTSD requires exposure to an upsetting traumatic event. However, the exposure could be indirect rather than first hand. For example, PTSD could occur in an individual learning about the violent death of a close family or friend. It can also occur as a result of repeated exposure to horrible details of trauma such as police officers exposed to details of child abuse cases.

", is_favorited: "false")
mental7 = MentalItem.create!(title: "Social Anxiety Disorder", description: "Social anxiety disorder, sometimes referred to as social phobia, is a type of anxiety disorder that causes extreme fear in social settings. People with this disorder have trouble talking to people, meeting new people, and attending social gatherings. They fear being judged or scrutinized by others. They may understand that their fears are irrational or unreasonable, but feel powerless to overcome them.

Social anxiety is different from shyness. Shyness is usually short-term and doesn’t disrupt one’s life. Social anxiety is persistent and debilitating. It can affect one’s ability to:

work
attend school
develop close relationships with people outside of their family
According to the Anxiety and Depression Association of America (ADAA) approximately 15 million American adults have social anxiety disorder. Symptoms of this disorder may start around the age of 13.", is_favorited: "false")
mental8 = MentalItem.create!(title: "Obsessive-Compulsive Disorder", description: "Obsessive-compulsive disorder (OCD) features a pattern of unwanted thoughts and fears (obsessions) that lead you to do repetitive behaviors (compulsions). These obsessions and compulsions interfere with daily activities and cause significant distress.

You may try to ignore or stop your obsessions, but that only increases your distress and anxiety. Ultimately, you feel driven to perform compulsive acts to try to ease your stress. Despite efforts to ignore or get rid of bothersome thoughts or urges, they keep coming back. This leads to more ritualistic behavior — the vicious cycle of OCD.

OCD often centers around certain themes — for example, an excessive fear of getting contaminated by germs. To ease your contamination fears, you may compulsively wash your hands until they're sore and chapped.

If you have OCD, you may be ashamed and embarrassed about the condition, but treatment can be effective.", is_favorited: "false")
mental9 = MentalItem.create!(title: "Bipolar Disorder", description: "Bipolar disorder, formerly called manic depression, is a mental health condition that causes extreme mood swings that include emotional highs (mania or hypomania) and lows (depression).

When you become depressed, you may feel sad or hopeless and lose interest or pleasure in most activities. When your mood shifts to mania or hypomania (less extreme than mania), you may feel euphoric, full of energy or unusually irritable. These mood swings can affect sleep, energy, activity, judgment, behavior and the ability to think clearly.

Episodes of mood swings may occur rarely or multiple times a year. While most people will experience some emotional symptoms between episodes, some may not experience any.

Although bipolar disorder is a lifelong condition, you can manage your mood swings and other symptoms by following a treatment plan. In most cases, bipolar disorder is treated with medications and psychological counseling (psychotherapy).", is_favorited: "false")

puts 'seeding comments...'
comment1 = Comment.create!(description: 'Very Informative!!', user_id:2, mental_item_id: mental6.id)
comment2 = Comment.create!(description: "I want to learn more.", user_id:2, mental_item_id: mental2.id)
comment3 = Comment.create!(description: "Thank you for the info", user_id:1, mental_item_id: mental3.id)
comment4 = Comment.create!(description: "It was an amazing experience", user_id:1, mental_item_id: mental5.id)
comment5 = Comment.create!(description: "More! More and More!", user_id:1, mental_item_id: mental3.id)
comment6 = Comment.create!(description: "Asante sana", user_id:2, mental_item_id: mental2.id)
comment7 = Comment.create!(description: "Thank you!!", user_id:1, mental_item_id: mental1.id)
puts "✅ Done seeding!"



