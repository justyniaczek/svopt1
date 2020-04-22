module interpolacja


function powell(f, x1, x2, x3)
    fx1 = f(x1)
    fx2 = f(x2)
    fx3 = f(x3)
    i = 1
    while x3 - x1 > 0.165

        global x4 = 0.5 * ((x2^2 - x3^2) * fx1 + (x3^2 - x1^2)* fx2 + (x1^2 - x2^2) * fx3) /( (x2 - x3)*fx1 + (x3 - x1)* fx2 +(x1 - x2) * fx3)
        println("fx1: ", fx1, " fx2: ", fx2, " fx3: ", fx3, " x4: ", x4, " i: ", i)
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
    println("Minimum: ", x4 , " counted at ", i - 1 , " iteration")
end

export powell

end # module