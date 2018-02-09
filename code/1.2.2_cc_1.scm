;;;有半美元（50美分）、四分之一美元(25美分)、10美分、5美分和1美分的硬币，给定任意数量的现金，计算所有换零钱方式的种数。
;;;硬币类型。输入硬币种类kinds-of-coins，输出硬币币值
(define (first-denomination kinds-of-coins)
        (cond ((= kinds-of-coins 1) 1)
              ((= kinds-of-coins 2) 5)
              ((= kinds-of-coins 3) 10)
              ((= kinds-of-coins 4) 25)
              ((= kinds-of-coins 5) 50)))

;;;将amount兑换为kinds=of-coins的方式数目。f(a,(c1,c2...cn))
;;;如果a=0，记为有1种兑换方式
;;;如果a<0，记为有0种兑换方式
;;;如果n=0，记为有0种兑换方式
(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((< amount 0) 0)
        ((= kinds-of-coins 0) 0)
;;;f(a,(c2,c3...cn))
        (else (+ (cc amount
                     (- kinds-of-coins 1))
;;;f((a-d1),(c1,c2...cn))
                 (cc (- amount (first-denomination kinds-of-coins))
				kinds-of-coins)))))
(define (count-change amount)
        (cc amount 5))

(display (count-change 15))

(exit)