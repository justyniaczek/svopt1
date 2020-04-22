module inter_powell


function powell(f, x1, x2, x3, epsilon)
    fx1 = f(x1)
    fx2 = f(x2)
    fx3 = f(x3)

    i = 1
    while x3 - x1 > epsilon

        global x4 = 0.5 * ((x2^2 - x3^2) * fx1 + (x3^2 - x1^2)* fx2 + (x1^2 - x2^2) * fx3) /( (x2 - x3)*fx1 + (x3 - x1)* fx2 +(x1 - x2) * fx3)
       # println("fx1: ",   round(fx1, digits =4), " fx2: ",   round(fx2, digits =4), " fx3: ",   round(fx3, digits =4), " x4: ", round(x4, digits =4), " i: ", i)

        fx4 = f(x4)


        i= i + 1

        if x4 > x2
            if fx4 < fx2
                x1 = x2
                x2 = x4
                fx1 = fx2
                fx2 = fx4
            else
                x3 = x4
                fx3 = fx4
            end
        elseif fx4 < fx2
            x3 = x2
            x2 = x4
            fx3 = fx2
            fx2 = fx4
        else
            x1 = x4
            fx1 = fx4
        end
    end
    if isnan(x4)
        println( 0 )
    else

    println( round(x4, digits =4)  )
    end
end

export powell

end # module