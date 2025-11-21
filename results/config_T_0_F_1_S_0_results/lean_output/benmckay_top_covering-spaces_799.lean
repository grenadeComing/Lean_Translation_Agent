import Mathlib

-- Minimal formalization to state the lemma about deck transformations preserving lifts of paths.

open Function

/-- Placeholder class for locally simply connected spaces. -/
class LocallySimplyConnected (X : Type _) [TopologicalSpace X] : Prop

/-- Placeholder predicate saying p : Xtilde → X is a covering map. We do not use its internal
    structure for this lemma, it is included to mirror the ordinary hypothesis. -/
def IsCovering {X Xtilde : Type _} [TopologicalSpace X] [TopologicalSpace Xtilde] (p : Xtilde → X) : Prop :=
  True

/-- A deck transformation is traditionally a homeomorphism g : Xtilde → Xtilde with p ∘ g = p.
    We do not require the homeomorphism properties here; we only require the commuting
    property with the projection p, since that is sufficient for the statement. -/
def IsDeck {X Xtilde : Type _} [TopologicalSpace X] [TopologicalSpace Xtilde]
  (p : Xtilde → X) (g : Xtilde → Xtilde) : Prop := p ∘ g = p

/-- For any path-connected and locally simply connected base X, a deck transformation
    of a covering p : Xtilde → X takes any lift of a path to another lift of the same path.

    We state this in a general form: if γ : I → X and γtilde : I → Xtilde satisfies p ∘ γtilde = γ,
    and g : Xtilde → Xtilde satisfies p ∘ g = p (a deck transformation), then p ∘ (g ∘ γtilde) = γ,
    i.e. g ∘ γtilde is again a lift of γ. -/
theorem deck_transformation_preserves_lifts
  {X : Type _} [TopologicalSpace X] [PathConnectedSpace X] [LocallySimplyConnected X]
  {Xtilde : Type _} [TopologicalSpace Xtilde]
  (p : Xtilde → X) (hcover : IsCovering p)
  {g : Xtilde → Xtilde} (hg : IsDeck p g)
  {I : Type _} [TopologicalSpace I]
  (γ : I → X) (γtilde : I → Xtilde) (hγlift : p ∘ γtilde = γ) :
  p ∘ (g ∘ γtilde) = γ := by sorry
