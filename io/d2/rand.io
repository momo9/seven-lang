#!/usr/bin/env io

guess := method(
    answer := Random value(100) ceil
    stdin := File standardInput
    guessing := nil
    10 repeat(
        "Please guess: " print
        guessing = stdin readLine asNumber
        if (guessing == answer,
            "You're right!" println
            break,
            if (guessing < answer,
                "More than #{guessing}" interpolate println,
                "Less than #{guessing}" interpolate println
            )
        )
    )
    if (guessing != answer,
        "Answer is #{answer}, try again" interpolate println
    )
)

guess
