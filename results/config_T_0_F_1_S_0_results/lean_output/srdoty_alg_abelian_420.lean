import Mathlib

/-- The set of integer partitions of n is encoded as functions a : Fin (n+1) → Fin (n / (k.val) + 1)
    giving the multiplicity a k of parts of size k. We index k by `Fin (n.succ)` and use the bound
    `a k ≤ n / k` to make the type a fintype. -/

def partitions_of (n : ℕ) : Finset (∀ k : Fin (n.succ), Fin (n / (k.val) + 1)) :=
  Finset.univ.filter fun a =>
    let s := Finset.sum (Finset.univ : Finset (Fin (n.succ))) fun k => (k.val : ℕ) * (a k).val
    s = n

/-- The partition function p(n) = number of partitions of n. -/
def p (n : ℕ) : ℕ := (partitions_of n).card

/-- Generating function identity for the partition numbers: the coefficient of x^n in the
    power series ∑_{m≥0} p(m) x^m equals the coefficient of x^n in the finite product
    ∏_{k=1}^n 1/(1 - x^k). We state the product by using the geometric series expansion
    1/(1 - x^k) = ∑_{j≥0} x^{k*j}, so the k-th factor is the power series whose n-th
    coefficient is 1 if k divides n and 0 otherwise. -/
theorem partitions_generating_function_coeff (n : ℕ) :
  PowerSeries.coeff ℤ n (PowerSeries.mk fun m => (p m : ℤ)) =
    PowerSeries.coeff ℤ n
      (Finset.prod (Finset.range n) fun k =>
        PowerSeries.mk fun m => if (k + 1) ∣ m then (1 : ℤ) else 0) := by sorry
