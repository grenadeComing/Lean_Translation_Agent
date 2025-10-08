import Mathlib

open MeasureTheory Filter Set

/--
Let f : ℝ → ℝ be a bounded function, a_n and b_n sequences with a < a_n < b_n < b,
lim a_n = a, lim b_n = b. If f is integrable on each [a_n,b_n], then f is
integrable on [a,b] and the integrals converge: ∫_{a}^{b} f = lim_{n→∞} ∫_{a_n}^{b_n} f.

We state this using Lebesgue integrability on the closed intervals (Icc).
Proof omitted.
-/
theorem bounded_on_Icc.integrable_on_of_seq_intervals
  (f : ℝ → ℝ) {a b : ℝ} (a_seq b_seq : ℕ → ℝ)
  (h_ab : a < b)
  (h_seqs : ∀ n, a < a_seq n ∧ a_seq n < b_seq n ∧ b_seq n < b)
  (ha : Tendsto a_seq Filter.atTop (nhds a)) (hb : Tendsto b_seq Filter.atTop (nhds b))
  (h_bdd : ∃ M, 0 ≤ M ∧ ∀ x, x ∈ Icc a b → |f x| ≤ M)
  (h_ints : ∀ n, MeasureTheory.IntegrableOn f (Icc (a_seq n) (b_seq n)) MeasureTheory.volume) :
  (MeasureTheory.IntegrableOn f (Icc a b) MeasureTheory.volume) ∧
    Tendsto (fun n => ∫ x in Icc (a_seq n) (b_seq n), f x ∂MeasureTheory.volume) Filter.atTop
      (nhds (∫ x in Icc a b, f x ∂MeasureTheory.volume)) := by sorry
