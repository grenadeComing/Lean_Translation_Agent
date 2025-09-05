import Mathlib

noncomputable section

variable {α : Type*} [NormedField α]

def cauchy_product (f g : ℕ → α) : ℕ → α :=
  fun n => ∑ i in Finset.range (n + 1), f i * g (n - i)

theorem summable_cauchy_product_of_absolutely_summable {f g : ℕ → α}
  (hf : Summable (fun n => ‖f n‖)) (hg : Summable (fun n => ‖g n‖)) :
  Summable (cauchy_product f g) ∧ (∑' n, cauchy_product f g n) = (∑' n, f n) * (∑' n, g n) := by
  sorry

end section
