import Mathlib

/-!
Statement (informal): Let f : [a,b] → ℝ be a bounded function. Suppose there exists a sequence of
partitions P_k of [a,b] such that lim_{k → ∞} (U(P_k,f) - L(P_k,f)) = 0. Show that f is Riemann
integrable and that ∫_a^b f = lim_{k → ∞} U(P_k,f) = lim_{k → ∞} L(P_k,f).

The formal statement below introduces a minimal abstract API for partitions, upper and lower
sums and the Riemann integrability predicate. We only state the theorem; the proof is omitted
(":= by sorry").
-/

open Set Filter

-- Abstract types and predicates to state the theorem without committing to a concrete
-- partition implementation from any particular library.
constant Partition : Type
constant is_partition_of_interval : Partition → ℝ → ℝ → Prop
constant UpperSum : Partition → (ℝ → ℝ) → ℝ
constant LowerSum : Partition → (ℝ → ℝ) → ℝ
constant BoundedOn : (ℝ → ℝ) → Set ℝ → Prop
constant RiemannIntegrableOn : (ℝ → ℝ) → Set ℝ → Prop
constant riemann_integral_on : (ℝ → ℝ) → Set ℝ → ℝ

/-- If there is a sequence of partitions of [a,b] whose upper minus lower sums tend to 0,
then f is Riemann integrable on [a,b], and the common limit of the upper and lower
sums equals the Riemann integral. -/
theorem riemann_integrable_of_partitions
  {a b : ℝ} {f : ℝ → ℝ}
  (h_ab : a < b)
  (h_bdd : BoundedOn f (Icc a b))
  (P : ℕ → Partition)
  (h_part : ∀ k, is_partition_of_interval (P k) a b)
  (h_tendsto : Tendsto (fun k => UpperSum (P k) f - LowerSum (P k) f) atTop (𝓝 0)) :
  RiemannIntegrableOn f (Icc a b) ∧
  ∃ I : ℝ, Tendsto (fun k => UpperSum (P k) f) atTop (𝓝 I) ∧ Tendsto (fun k => LowerSum (P k) f) atTop (𝓝 I) ∧
    riemann_integral_on f (Icc a b) = I := by sorry

end